
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32 ;
typedef size_t ssize_t ;
struct TYPE_10__ {int length; char* value; } ;
typedef TYPE_1__ gss_buffer_desc ;
struct TYPE_11__ {int errorMessage; int gctx; } ;
typedef TYPE_2__ PGconn ;
typedef int OM_uint32 ;


 TYPE_1__ GSS_C_EMPTY_BUFFER ;
 int GSS_S_COMPLETE ;
 int PQ_GSS_RECV_BUFFER_SIZE ;
 char* PqGSSRecvBuffer ;
 int PqGSSRecvLength ;
 int PqGSSRecvPointer ;
 char* PqGSSResultBuffer ;
 int PqGSSResultLength ;
 int PqGSSResultPointer ;
 int gss_release_buffer (int *,TYPE_1__*) ;
 int gss_unwrap (int *,int ,TYPE_1__*,TYPE_1__*,int*,int *) ;
 int libpq_gettext (char*) ;
 int memcpy (char*,char*,int) ;
 int ntohl (int ) ;
 int pg_GSS_error (int ,TYPE_2__*,int ,int ) ;
 size_t pqsecure_raw_read (TYPE_2__*,char*,int) ;
 int printfPQExpBuffer (int *,int ,...) ;

ssize_t
pg_GSS_read(PGconn *conn, void *ptr, size_t len)
{
 OM_uint32 major,
    minor;
 gss_buffer_desc input = GSS_C_EMPTY_BUFFER,
    output = GSS_C_EMPTY_BUFFER;
 ssize_t ret = 0;
 size_t bytes_to_return = len;
 size_t bytes_returned = 0;
 while (bytes_to_return)
 {
  int conf_state = 0;


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

   ret = pqsecure_raw_read(conn, PqGSSRecvBuffer + PqGSSRecvLength,
         sizeof(uint32) - PqGSSRecvLength);
   if (ret < 0)
    return bytes_returned ? bytes_returned : ret;

   PqGSSRecvLength += ret;
   if (PqGSSRecvLength < sizeof(uint32))
    return bytes_returned;
  }





  input.length = ntohl(*(uint32 *) PqGSSRecvBuffer);


  if (input.length > PQ_GSS_RECV_BUFFER_SIZE - sizeof(uint32))
  {
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("oversize GSSAPI packet sent by the server (%zu > %zu)\n"),
         (size_t) input.length,
         PQ_GSS_RECV_BUFFER_SIZE - sizeof(uint32));
   ret = -1;
   goto cleanup;
  }





  ret = pqsecure_raw_read(conn, PqGSSRecvBuffer + PqGSSRecvLength,
        input.length - (PqGSSRecvLength - sizeof(uint32)));
  if (ret < 0)
   return bytes_returned ? bytes_returned : ret;





  PqGSSRecvLength += ret;
  if (PqGSSRecvLength - sizeof(uint32) < input.length)
   return bytes_returned ? bytes_returned : -1;






  output.value = ((void*)0);
  output.length = 0;
  input.value = PqGSSRecvBuffer + sizeof(uint32);

  major = gss_unwrap(&minor, conn->gctx, &input, &output, &conf_state, ((void*)0));
  if (major != GSS_S_COMPLETE)
  {
   pg_GSS_error(libpq_gettext("GSSAPI unwrap error"), conn,
       major, minor);
   ret = -1;
   goto cleanup;
  }
  else if (conf_state == 0)
  {
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("incoming GSSAPI message did not use confidentiality\n"));
   ret = -1;
   goto cleanup;
  }

  memcpy(PqGSSResultBuffer, output.value, output.length);
  PqGSSResultLength = output.length;


  PqGSSRecvPointer = PqGSSRecvLength = 0;

  gss_release_buffer(&minor, &output);
 }

 ret = bytes_returned;

cleanup:
 if (output.value != ((void*)0))
  gss_release_buffer(&minor, &output);
 return ret;
}
