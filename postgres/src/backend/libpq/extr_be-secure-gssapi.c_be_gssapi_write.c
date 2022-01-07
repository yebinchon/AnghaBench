
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char uint32 ;
typedef scalar_t__ ssize_t ;
struct TYPE_8__ {int ctx; } ;
typedef TYPE_1__ pg_gssinfo ;
struct TYPE_9__ {size_t length; char* value; } ;
typedef TYPE_2__ gss_buffer_desc ;
struct TYPE_10__ {TYPE_1__* gss; } ;
typedef TYPE_3__ Port ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 int FATAL ;
 int GSS_C_QOP_DEFAULT ;
 scalar_t__ GSS_S_COMPLETE ;
 int PQ_GSS_SEND_BUFFER_SIZE ;
 scalar_t__ PqGSSSendBuffer ;
 scalar_t__ PqGSSSendPointer ;
 scalar_t__ PqGSSSendStart ;
 int ereport (int ,int ) ;
 int errmsg (char*,...) ;
 scalar_t__ errno ;
 int gettext_noop (char*) ;
 scalar_t__ gss_wrap (scalar_t__*,int ,int,int ,TYPE_2__*,int*,TYPE_2__*) ;
 char htonl (size_t) ;
 size_t max_packet_size ;
 int memcpy (scalar_t__,char*,int) ;
 int pg_GSS_error (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ secure_raw_write (TYPE_3__*,scalar_t__,scalar_t__) ;

ssize_t
be_gssapi_write(Port *port, void *ptr, size_t len)
{
 size_t bytes_to_encrypt = len;
 size_t bytes_encrypted = 0;







 while (bytes_to_encrypt || PqGSSSendPointer)
 {
  OM_uint32 major,
     minor;
  gss_buffer_desc input,
     output;
  int conf_state = 0;
  uint32 netlen;
  pg_gssinfo *gss = port->gss;






  if (PqGSSSendPointer)
  {
   ssize_t ret;
   ssize_t amount = PqGSSSendPointer - PqGSSSendStart;

   ret = secure_raw_write(port, PqGSSSendBuffer + PqGSSSendStart, amount);
   if (ret <= 0)
   {
    if (bytes_encrypted != 0 && (errno == EAGAIN || errno == EWOULDBLOCK || errno == EINTR))
     return bytes_encrypted;
    else
     return ret;
   }





   if (ret != amount)
   {
    PqGSSSendStart += ret;
    continue;
   }


   PqGSSSendPointer = PqGSSSendStart = 0;
  }




  if (!bytes_to_encrypt)
   return bytes_encrypted;
  if (bytes_to_encrypt > max_packet_size)
   input.length = max_packet_size;
  else
   input.length = bytes_to_encrypt;

  input.value = (char *) ptr + bytes_encrypted;

  output.value = ((void*)0);
  output.length = 0;


  major = gss_wrap(&minor, gss->ctx, 1, GSS_C_QOP_DEFAULT,
       &input, &conf_state, &output);
  if (major != GSS_S_COMPLETE)
   pg_GSS_error(FATAL, gettext_noop("GSSAPI wrap error"), major, minor);

  if (conf_state == 0)
   ereport(FATAL,
     (errmsg("outgoing GSSAPI message would not use confidentiality")));

  if (output.length > PQ_GSS_SEND_BUFFER_SIZE - sizeof(uint32))
   ereport(FATAL,
     (errmsg("server tried to send oversize GSSAPI packet (%zu > %zu)",
       (size_t) output.length,
       PQ_GSS_SEND_BUFFER_SIZE - sizeof(uint32))));

  bytes_encrypted += input.length;
  bytes_to_encrypt -= input.length;


  netlen = htonl(output.length);
  memcpy(PqGSSSendBuffer + PqGSSSendPointer, &netlen, sizeof(uint32));
  PqGSSSendPointer += sizeof(uint32);

  memcpy(PqGSSSendBuffer + PqGSSSendPointer, output.value, output.length);
  PqGSSSendPointer += output.length;
 }

 return bytes_encrypted;
}
