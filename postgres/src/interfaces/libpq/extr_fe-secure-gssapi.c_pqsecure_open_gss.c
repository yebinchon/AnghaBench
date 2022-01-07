
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32 ;
typedef scalar_t__ ssize_t ;
struct TYPE_12__ {int length; char* value; } ;
typedef TYPE_1__ gss_buffer_desc ;
struct TYPE_13__ {int allow_ssl_try; int gssenc; int gctx; int gcred; int gtarg_nam; int errorMessage; } ;
typedef scalar_t__ PostgresPollingStatusType ;
typedef TYPE_2__ PGconn ;
typedef int OM_uint32 ;


 scalar_t__ EWOULDBLOCK ;
 TYPE_1__ GSS_C_EMPTY_BUFFER ;
 int GSS_C_NO_CREDENTIAL ;
 int GSS_C_NO_OID ;
 int GSS_C_QOP_DEFAULT ;
 scalar_t__ GSS_ERROR (int ) ;
 int GSS_REQUIRED_FLAGS ;
 scalar_t__ PGRES_POLLING_FAILED ;
 scalar_t__ PGRES_POLLING_OK ;
 scalar_t__ PGRES_POLLING_READING ;
 scalar_t__ PGRES_POLLING_WRITING ;
 int PQ_GSS_RECV_BUFFER_SIZE ;
 int PQ_GSS_SEND_BUFFER_SIZE ;
 char* PqGSSRecvBuffer ;
 int PqGSSRecvLength ;
 scalar_t__ PqGSSRecvPointer ;
 int PqGSSResultLength ;
 int PqGSSResultPointer ;
 scalar_t__ PqGSSSendBuffer ;
 scalar_t__ PqGSSSendPointer ;
 scalar_t__ PqGSSSendStart ;
 scalar_t__ STATUS_OK ;
 scalar_t__ errno ;
 int gss_init_sec_context (int *,int ,int *,int ,int ,int ,int ,int ,TYPE_1__*,int *,TYPE_1__*,int *,int *) ;
 scalar_t__ gss_read (TYPE_2__*,char*,int,scalar_t__*) ;
 int gss_release_buffer (int *,TYPE_1__*) ;
 int gss_release_cred (int *,int *) ;
 int gss_wrap_size_limit (int *,int ,int,int ,int,int *) ;
 int htonl (int) ;
 int libpq_gettext (char*) ;
 int max_packet_size ;
 int memcpy (scalar_t__,char*,int) ;
 int ntohl (int ) ;
 int pg_GSS_error (int ,TYPE_2__*,int ,int ) ;
 scalar_t__ pg_GSS_load_servicename (TYPE_2__*) ;
 scalar_t__ pqsecure_raw_write (TYPE_2__*,scalar_t__,scalar_t__) ;
 int printfPQExpBuffer (int *,char*,...) ;

PostgresPollingStatusType
pqsecure_open_gss(PGconn *conn)
{
 static int first = 1;
 ssize_t ret;
 OM_uint32 major,
    minor;
 uint32 netlen;
 PostgresPollingStatusType result;
 gss_buffer_desc input = GSS_C_EMPTY_BUFFER,
    output = GSS_C_EMPTY_BUFFER;


 if (first)
 {
  PqGSSSendPointer = PqGSSSendStart = PqGSSRecvPointer = PqGSSRecvLength = PqGSSResultPointer = PqGSSResultLength = 0;
  first = 0;
 }




 if (PqGSSSendPointer)
 {
  ssize_t amount = PqGSSSendPointer - PqGSSSendStart;

  ret = pqsecure_raw_write(conn, PqGSSSendBuffer + PqGSSSendStart, amount);
  if (ret < 0 && errno == EWOULDBLOCK)
   return PGRES_POLLING_WRITING;

  if (ret != amount)
  {
   PqGSSSendStart += amount;
   return PGRES_POLLING_WRITING;
  }

  PqGSSSendPointer = PqGSSSendStart = 0;
 }






 if (conn->gctx)
 {



  if (PqGSSRecvLength < sizeof(uint32))
  {

   result = gss_read(conn, PqGSSRecvBuffer + PqGSSRecvLength, sizeof(uint32) - PqGSSRecvLength, &ret);
   if (result != PGRES_POLLING_OK)
    return result;

   PqGSSRecvLength += ret;

   if (PqGSSRecvLength < sizeof(uint32))
    return PGRES_POLLING_READING;
  }
  if (PqGSSRecvBuffer[0] == 'E')
  {






   result = gss_read(conn, PqGSSRecvBuffer + PqGSSRecvLength, PQ_GSS_RECV_BUFFER_SIZE - PqGSSRecvLength - 1, &ret);
   if (result != PGRES_POLLING_OK)
    return result;

   PqGSSRecvLength += ret;

   printfPQExpBuffer(&conn->errorMessage, "%s\n", PqGSSRecvBuffer + 1);

   return PGRES_POLLING_FAILED;
  }







  input.length = ntohl(*(uint32 *) PqGSSRecvBuffer);
  if (input.length > PQ_GSS_RECV_BUFFER_SIZE - sizeof(uint32))
  {
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("oversize GSSAPI packet sent by the server (%zu > %zu)\n"),
         (size_t) input.length,
         PQ_GSS_RECV_BUFFER_SIZE - sizeof(uint32));
   return PGRES_POLLING_FAILED;
  }





  result = gss_read(conn, PqGSSRecvBuffer + PqGSSRecvLength,
        input.length - (PqGSSRecvLength - sizeof(uint32)), &ret);
  if (result != PGRES_POLLING_OK)
   return result;

  PqGSSRecvLength += ret;





  if (PqGSSRecvLength - sizeof(uint32) < input.length)
   return PGRES_POLLING_READING;

  input.value = PqGSSRecvBuffer + sizeof(uint32);
 }


 ret = pg_GSS_load_servicename(conn);
 if (ret != STATUS_OK)
  return PGRES_POLLING_FAILED;





 major = gss_init_sec_context(&minor, conn->gcred, &conn->gctx,
         conn->gtarg_nam, GSS_C_NO_OID,
         GSS_REQUIRED_FLAGS, 0, 0, &input, ((void*)0),
         &output, ((void*)0), ((void*)0));


 PqGSSRecvPointer = PqGSSRecvLength = 0;

 if (GSS_ERROR(major))
 {
  pg_GSS_error(libpq_gettext("could not initiate GSSAPI security context"),
      conn, major, minor);
  return PGRES_POLLING_FAILED;
 }
 else if (output.length == 0)
 {







  gss_release_cred(&minor, &conn->gcred);
  conn->gcred = GSS_C_NO_CREDENTIAL;
  conn->gssenc = 1;





  major = gss_wrap_size_limit(&minor, conn->gctx, 1, GSS_C_QOP_DEFAULT,
         PQ_GSS_SEND_BUFFER_SIZE - sizeof(uint32), &max_packet_size);

  if (GSS_ERROR(major))
   pg_GSS_error(libpq_gettext("GSSAPI size check error"), conn,
       major, minor);

  return PGRES_POLLING_OK;
 }


 if (output.length > PQ_GSS_SEND_BUFFER_SIZE - sizeof(uint32))
 {
  pg_GSS_error(libpq_gettext("GSSAPI context establishment error"),
      conn, major, minor);
  return PGRES_POLLING_FAILED;
 }


 netlen = htonl(output.length);

 memcpy(PqGSSSendBuffer, (char *) &netlen, sizeof(uint32));
 PqGSSSendPointer += sizeof(uint32);

 memcpy(PqGSSSendBuffer + PqGSSSendPointer, output.value, output.length);
 PqGSSSendPointer += output.length;

 gss_release_buffer(&minor, &output);


 return PGRES_POLLING_WRITING;
}
