
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* func ) () ;scalar_t__ name; } ;
typedef TYPE_1__ php_session_cache_limiter_t ;


 int E_WARNING ;
 char* PS (int ) ;
 scalar_t__ SG (int ) ;
 int cache_limiter ;
 int headers_sent ;
 int php_error_docref (int *,int ,char*,...) ;
 char* php_output_get_start_filename () ;
 int php_output_get_start_lineno () ;
 int php_session_abort () ;
 char* php_session_active ;
 TYPE_1__* php_session_cache_limiters ;
 int session_status ;
 int strcasecmp (scalar_t__,char*) ;
 int stub1 () ;

__attribute__((used)) static int php_session_cache_limiter(void)
{
 const php_session_cache_limiter_t *lim;

 if (PS(cache_limiter)[0] == '\0') return 0;
 if (PS(session_status) != php_session_active) return -1;

 if (SG(headers_sent)) {
  const char *output_start_filename = php_output_get_start_filename();
  int output_start_lineno = php_output_get_start_lineno();

  php_session_abort();
  if (output_start_filename) {
   php_error_docref(((void*)0), E_WARNING, "Cannot send session cache limiter - headers already sent (output started at %s:%d)", output_start_filename, output_start_lineno);
  } else {
   php_error_docref(((void*)0), E_WARNING, "Cannot send session cache limiter - headers already sent");
  }
  return -2;
 }

 for (lim = php_session_cache_limiters; lim->name; lim++) {
  if (!strcasecmp(lim->name, PS(cache_limiter))) {
   lim->func();
   return 0;
  }
 }

 return -1;
}
