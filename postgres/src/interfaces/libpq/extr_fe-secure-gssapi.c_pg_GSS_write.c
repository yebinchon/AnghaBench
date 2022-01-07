
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char uint32 ;
typedef scalar_t__ ssize_t ;
struct TYPE_10__ {size_t length; char* value; } ;
typedef TYPE_1__ gss_buffer_desc ;
struct TYPE_11__ {int errorMessage; int gctx; } ;
typedef TYPE_2__ PGconn ;
typedef int OM_uint32 ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 TYPE_1__ GSS_C_EMPTY_BUFFER ;
 int GSS_C_QOP_DEFAULT ;
 int GSS_S_COMPLETE ;
 int PQ_GSS_SEND_BUFFER_SIZE ;
 scalar_t__ PqGSSSendBuffer ;
 scalar_t__ PqGSSSendPointer ;
 scalar_t__ PqGSSSendStart ;
 scalar_t__ errno ;
 int gss_release_buffer (int *,TYPE_1__*) ;
 int gss_wrap (int *,int ,int,int ,TYPE_1__*,int*,TYPE_1__*) ;
 char htonl (size_t) ;
 int libpq_gettext (char*) ;
 size_t max_packet_size ;
 int memcpy (scalar_t__,char*,int) ;
 int pg_GSS_error (int ,TYPE_2__*,int ,int ) ;
 scalar_t__ pqsecure_raw_write (TYPE_2__*,scalar_t__,scalar_t__) ;
 int printfPQExpBuffer (int *,int ,...) ;

ssize_t
pg_GSS_write(PGconn *conn, const void *ptr, size_t len)
{
 gss_buffer_desc input,
    output = GSS_C_EMPTY_BUFFER;
 OM_uint32 major,
    minor;
 ssize_t ret = -1;
 size_t bytes_to_encrypt = len;
 size_t bytes_encrypted = 0;







 while (bytes_to_encrypt || PqGSSSendPointer)
 {
  int conf_state = 0;
  uint32 netlen;






  if (PqGSSSendPointer)
  {
   ssize_t ret;
   ssize_t amount = PqGSSSendPointer - PqGSSSendStart;

   ret = pqsecure_raw_write(conn, PqGSSSendBuffer + PqGSSSendStart, amount);
   if (ret < 0)
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


  major = gss_wrap(&minor, conn->gctx, 1, GSS_C_QOP_DEFAULT,
       &input, &conf_state, &output);
  if (major != GSS_S_COMPLETE)
  {
   pg_GSS_error(libpq_gettext("GSSAPI wrap error"), conn, major, minor);
   goto cleanup;
  }
  else if (conf_state == 0)
  {
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("outgoing GSSAPI message would not use confidentiality\n"));
   goto cleanup;
  }

  if (output.length > PQ_GSS_SEND_BUFFER_SIZE - sizeof(uint32))
  {
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("client tried to send oversize GSSAPI packet (%zu > %zu)\n"),
         (size_t) output.length,
         PQ_GSS_SEND_BUFFER_SIZE - sizeof(uint32));
   goto cleanup;
  }

  bytes_encrypted += input.length;
  bytes_to_encrypt -= input.length;


  netlen = htonl(output.length);
  memcpy(PqGSSSendBuffer + PqGSSSendPointer, &netlen, sizeof(uint32));
  PqGSSSendPointer += sizeof(uint32);

  memcpy(PqGSSSendBuffer + PqGSSSendPointer, output.value, output.length);
  PqGSSSendPointer += output.length;
 }

 ret = bytes_encrypted;

cleanup:
 if (output.value != ((void*)0))
  gss_release_buffer(&minor, &output);
 return ret;
}
