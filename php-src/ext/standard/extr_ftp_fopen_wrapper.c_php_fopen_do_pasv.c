
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int php_stream ;


 int GET_FTP_RESULT (int *) ;
 scalar_t__ isdigit (int) ;
 int memcpy (char*,char*,size_t) ;
 int php_stream_write_string (int *,char*) ;
 scalar_t__ strtoul (char*,char**,int) ;

__attribute__((used)) static unsigned short php_fopen_do_pasv(php_stream *stream, char *ip, size_t ip_size, char **phoststart)
{
 char tmp_line[512];
 int result, i;
 unsigned short portno;
 char *tpath, *ttpath, *hoststart=((void*)0);
  php_stream_write_string(stream, "PASV\r\n");
  result = GET_FTP_RESULT(stream);


  if (result != 227) {
   return 0;
  }


  tpath = tmp_line;

  for (tpath += 4; *tpath && !isdigit((int) *tpath); tpath++);
  if (!*tpath) {
   return 0;
  }

  hoststart = tpath;
  for (i = 0; i < 4; i++) {
   for (; isdigit((int) *tpath); tpath++);
   if (*tpath != ',') {
    return 0;
   }
   *tpath='.';
   tpath++;
  }
  tpath[-1] = '\0';
  memcpy(ip, hoststart, ip_size);
  ip[ip_size-1] = '\0';
  hoststart = ip;


  portno = (unsigned short) strtoul(tpath, &ttpath, 10) * 256;
  if (ttpath == ((void*)0)) {

   return 0;
  }
  tpath = ttpath;
  if (*tpath != ',') {
   return 0;
  }
  tpath++;

  portno += (unsigned short) strtoul(tpath, &ttpath, 10);
 if (ttpath == ((void*)0)) {

  return 0;
 }

 if (phoststart) {
  *phoststart = hoststart;
 }

 return portno;
}
