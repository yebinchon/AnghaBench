
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int multipart_buffer ;
typedef int buf ;


 int FILLUNIT ;
 char* erealloc (char*,int) ;
 int memcpy (char*,char*,int) ;
 int multipart_buffer_read (int *,char*,int,int *) ;

__attribute__((used)) static char *multipart_buffer_read_body(multipart_buffer *self, size_t *len)
{
 char buf[FILLUNIT], *out=((void*)0);
 int total_bytes=0, read_bytes=0;

 while((read_bytes = multipart_buffer_read(self, buf, sizeof(buf), ((void*)0)))) {
  out = erealloc(out, total_bytes + read_bytes + 1);
  memcpy(out + total_bytes, buf, read_bytes);
  total_bytes += read_bytes;
 }

 if (out) {
  out[total_bytes] = '\0';
 }
 *len = total_bytes;

 return out;
}
