
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fcgi_request ;


 scalar_t__ CGIG (int ) ;
 int FCGI_STDERR ;
 scalar_t__ SG (int ) ;
 scalar_t__ fcgi_is_fastcgi () ;
 int fcgi_logging ;
 int fcgi_write (int *,int ,char*,int) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;
 int php_handle_aborted_connection () ;
 int server_context ;
 int stderr ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void sapi_cgi_log_message(char *message, int syslog_type_int)
{
 if (fcgi_is_fastcgi() && CGIG(fcgi_logging)) {
  fcgi_request *request;

  request = (fcgi_request*) SG(server_context);
  if (request) {
   int ret, len = (int)strlen(message);
   char *buf = malloc(len+2);

   memcpy(buf, message, len);
   memcpy(buf + len, "\n", sizeof("\n"));
   ret = fcgi_write(request, FCGI_STDERR, buf, (int)(len + 1));
   free(buf);
   if (ret < 0) {
    php_handle_aborted_connection();
   }
  } else {
   fprintf(stderr, "%s\n", message);
  }

 } else {
  fprintf(stderr, "%s\n", message);
 }
}
