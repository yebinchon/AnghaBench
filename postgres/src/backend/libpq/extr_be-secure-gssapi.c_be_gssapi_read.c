
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32 ;
typedef size_t ssize_t ;
struct TYPE_9__ {int ctx; } ;
typedef TYPE_1__ pg_gssinfo ;
struct TYPE_10__ {int length; char* value; } ;
typedef TYPE_2__ gss_buffer_desc ;
struct TYPE_11__ {TYPE_1__* gss; } ;
typedef TYPE_3__ Port ;
typedef scalar_t__ OM_uint32 ;


 int EWOULDBLOCK ;
 int FATAL ;
 scalar_t__ GSS_S_COMPLETE ;
 int PQ_GSS_RECV_BUFFER_SIZE ;
 char* PqGSSRecvBuffer ;
 int PqGSSRecvLength ;
 char* PqGSSResultBuffer ;
 int PqGSSResultLength ;
 int PqGSSResultPointer ;
 int ereport (int ,int ) ;
 int errmsg (char*,...) ;
 int errno ;
 int gettext_noop (char*) ;
 int gss_release_buffer (scalar_t__*,TYPE_2__*) ;
 scalar_t__ gss_unwrap (scalar_t__*,int ,TYPE_2__*,TYPE_2__*,int*,int *) ;
 int memcpy (char*,char*,int) ;
 int ntohl (int ) ;
 int pg_GSS_error (int ,int ,scalar_t__,scalar_t__) ;
 size_t secure_raw_read (TYPE_3__*,char*,int) ;

ssize_t
be_gssapi_read(Port *port, void *ptr, size_t len)
{
 OM_uint32 major,
    minor;
 gss_buffer_desc input,
    output;
 ssize_t ret;
 size_t bytes_to_return = len;
 size_t bytes_returned = 0;
 int conf_state = 0;
 pg_gssinfo *gss = port->gss;
 while (bytes_to_return)
 {

  if (PqGSSResultPointer < PqGSSResultLength)
  {
   int bytes_in_buffer = PqGSSResultLength - PqGSSResultPointer;
   int bytes_to_copy = bytes_in_buffer < len - bytes_returned ? bytes_in_buffer : len - bytes_returned;





   memcpy((char *) ptr + bytes_returned, PqGSSResultBuffer + PqGSSResultPointer, bytes_to_copy);
   PqGSSResultPointer += bytes_to_copy;
   bytes_to_return -= bytes_to_copy;
   bytes_returned += bytes_to_copy;


   if (PqGSSResultPointer == PqGSSResultLength)
    PqGSSResultPointer = PqGSSResultLength = 0;

   continue;
  }
  if (PqGSSRecvLength < sizeof(uint32))
  {




   ret = secure_raw_read(port, PqGSSRecvBuffer + PqGSSRecvLength,
          sizeof(uint32) - PqGSSRecvLength);
   if (ret < 0)
    return bytes_returned ? bytes_returned : ret;

   PqGSSRecvLength += ret;






   if (PqGSSRecvLength < sizeof(uint32))
    return bytes_returned;
  }





  input.length = ntohl(*(uint32 *) PqGSSRecvBuffer);


  if (input.length > PQ_GSS_RECV_BUFFER_SIZE - sizeof(uint32))
   ereport(FATAL,
     (errmsg("oversize GSSAPI packet sent by the client (%zu > %zu)",
       (size_t) input.length,
       PQ_GSS_RECV_BUFFER_SIZE - sizeof(uint32))));





  ret = secure_raw_read(port, PqGSSRecvBuffer + PqGSSRecvLength,
         input.length - (PqGSSRecvLength - sizeof(uint32)));
  if (ret < 0)
   return bytes_returned ? bytes_returned : ret;

  PqGSSRecvLength += ret;






  if (PqGSSRecvLength - sizeof(uint32) < input.length)
  {
   if (!bytes_returned)
   {
    errno = EWOULDBLOCK;
    return -1;
   }

   return bytes_returned;
  }






  output.value = ((void*)0);
  output.length = 0;
  input.value = PqGSSRecvBuffer + sizeof(uint32);

  major = gss_unwrap(&minor, gss->ctx, &input, &output, &conf_state, ((void*)0));
  if (major != GSS_S_COMPLETE)
   pg_GSS_error(FATAL, gettext_noop("GSSAPI unwrap error"),
       major, minor);

  if (conf_state == 0)
   ereport(FATAL,
     (errmsg("incoming GSSAPI message did not use confidentiality")));

  memcpy(PqGSSResultBuffer, output.value, output.length);

  PqGSSResultLength = output.length;


  PqGSSRecvLength = 0;

  gss_release_buffer(&minor, &output);
 }

 return bytes_returned;
}
