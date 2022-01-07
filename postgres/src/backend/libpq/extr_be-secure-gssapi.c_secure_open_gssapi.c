
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32 ;
typedef scalar_t__ ssize_t ;
struct TYPE_12__ {int length; char* value; } ;
typedef TYPE_2__ gss_buffer_desc ;
struct TYPE_13__ {TYPE_1__* gss; int sock; } ;
struct TYPE_11__ {int enc; int ctx; int name; } ;
typedef TYPE_3__ Port ;
typedef int OM_uint32 ;


 int ERROR ;
 int FATAL ;
 TYPE_2__ GSS_C_EMPTY_BUFFER ;
 int GSS_C_NO_CHANNEL_BINDINGS ;
 int GSS_C_NO_CREDENTIAL ;
 int GSS_C_QOP_DEFAULT ;
 scalar_t__ GSS_ERROR (int) ;
 int GSS_S_CONTINUE_NEEDED ;
 int MyLatch ;
 int PQ_GSS_RECV_BUFFER_SIZE ;
 int PQ_GSS_SEND_BUFFER_SIZE ;
 char* PqGSSRecvBuffer ;
 int PqGSSRecvLength ;
 int PqGSSResultLength ;
 int PqGSSResultPointer ;
 int PqGSSSendBuffer ;
 int PqGSSSendPointer ;
 int PqGSSSendStart ;
 int WAIT_EVENT_GSS_OPEN_SERVER ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_SOCKET_WRITEABLE ;
 int WaitLatchOrSocket (int ,int,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,size_t,int) ;
 int gettext_noop (char*) ;
 int gss_accept_sec_context (int*,int *,int ,TYPE_2__*,int ,int *,int *,TYPE_2__*,int *,int *,int *) ;
 int gss_release_buffer (int*,TYPE_2__*) ;
 int gss_wrap_size_limit (int*,int ,int,int ,int,int *) ;
 int htonl (int) ;
 int max_packet_size ;
 int memcpy (int,char*,int) ;
 int ntohl (int ) ;
 int pg_GSS_error (int ,int ,int,int) ;
 int * pg_krb_server_keyfile ;
 scalar_t__ read_or_wait (TYPE_3__*,int) ;
 scalar_t__ secure_raw_write (TYPE_3__*,int,int) ;
 int setenv (char*,int *,int) ;
 scalar_t__ strlen (int *) ;

ssize_t
secure_open_gssapi(Port *port)
{
 bool complete_next = 0;
 OM_uint32 major,
    minor;


 PqGSSSendPointer = PqGSSSendStart = PqGSSRecvLength = PqGSSResultPointer = PqGSSResultLength = 0;





 if (pg_krb_server_keyfile != ((void*)0) && strlen(pg_krb_server_keyfile) > 0)
  setenv("KRB5_KTNAME", pg_krb_server_keyfile, 1);

 while (1)
 {
  ssize_t ret;
  gss_buffer_desc input,
     output = GSS_C_EMPTY_BUFFER;





  ret = read_or_wait(port, sizeof(uint32));
  if (ret < 0)
   return ret;




  input.length = ntohl(*(uint32 *) PqGSSRecvBuffer);


  PqGSSRecvLength = 0;







  if (input.length > PQ_GSS_RECV_BUFFER_SIZE)
   ereport(FATAL,
     (errmsg("oversize GSSAPI packet sent by the client (%zu > %d)",
       (size_t) input.length,
       PQ_GSS_RECV_BUFFER_SIZE)));





  ret = read_or_wait(port, input.length);
  if (ret < 0)
   return ret;

  input.value = PqGSSRecvBuffer;


  major = gss_accept_sec_context(&minor, &port->gss->ctx,
            GSS_C_NO_CREDENTIAL, &input,
            GSS_C_NO_CHANNEL_BINDINGS,
            &port->gss->name, ((void*)0), &output, ((void*)0),
            ((void*)0), ((void*)0));
  if (GSS_ERROR(major))
  {
   pg_GSS_error(ERROR, gettext_noop("could not accept GSSAPI security context"),
       major, minor);
   gss_release_buffer(&minor, &output);
   return -1;
  }
  else if (!(major & GSS_S_CONTINUE_NEEDED))
  {




   complete_next = 1;
  }


  PqGSSRecvLength = 0;





  if (output.length != 0)
  {
   uint32 netlen = htonl(output.length);

   if (output.length > PQ_GSS_SEND_BUFFER_SIZE - sizeof(uint32))
    ereport(FATAL,
      (errmsg("server tried to send oversize GSSAPI packet (%zu > %zu)",
        (size_t) output.length,
        PQ_GSS_SEND_BUFFER_SIZE - sizeof(uint32))));

   memcpy(PqGSSSendBuffer, (char *) &netlen, sizeof(uint32));
   PqGSSSendPointer += sizeof(uint32);

   memcpy(PqGSSSendBuffer + PqGSSSendPointer, output.value, output.length);
   PqGSSSendPointer += output.length;

   while (PqGSSSendStart != sizeof(uint32) + output.length)
   {
    ret = secure_raw_write(port, PqGSSSendBuffer + PqGSSSendStart, sizeof(uint32) + output.length - PqGSSSendStart);
    if (ret <= 0)
    {
     WaitLatchOrSocket(MyLatch,
           WL_SOCKET_WRITEABLE | WL_EXIT_ON_PM_DEATH,
           port->sock, 0, WAIT_EVENT_GSS_OPEN_SERVER);
     continue;
    }

    PqGSSSendStart += ret;
   }


   PqGSSSendStart = PqGSSSendPointer = 0;

   gss_release_buffer(&minor, &output);
  }





  if (complete_next)
   break;
 }





 major = gss_wrap_size_limit(&minor, port->gss->ctx, 1, GSS_C_QOP_DEFAULT,
        PQ_GSS_SEND_BUFFER_SIZE - sizeof(uint32), &max_packet_size);

 if (GSS_ERROR(major))
  pg_GSS_error(FATAL, gettext_noop("GSSAPI size check error"),
      major, minor);

 port->gss->enc = 1;

 return 0;
}
