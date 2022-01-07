
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef char zend_string ;
typedef scalar_t__ time_t ;
struct timeval {int tv_sec; } ;
struct TYPE_8__ {char* s; int member_0; } ;
typedef TYPE_1__ smart_str ;


 char* COOKIE_DOMAIN ;
 char* COOKIE_EXPIRES ;
 char* COOKIE_HTTPONLY ;
 char* COOKIE_MAX_AGE ;
 char* COOKIE_PATH ;
 char* COOKIE_SAMESITE ;
 char* COOKIE_SECURE ;
 int E_WARNING ;
 int FAILURE ;
 char* PS (int ) ;
 scalar_t__ SG (int ) ;
 int SUCCESS ;
 int ZSTR_LEN (char*) ;
 char* ZSTR_VAL (char*) ;
 int cookie_domain ;
 int cookie_httponly ;
 int cookie_lifetime ;
 int cookie_path ;
 int cookie_samesite ;
 int cookie_secure ;
 int estrndup (char*,int) ;
 int gettimeofday (struct timeval*,int *) ;
 int headers_sent ;
 int id ;
 int php_error_docref (int *,int ,char*,...) ;
 char* php_format_date (char*,int,scalar_t__,int ) ;
 char* php_output_get_start_filename () ;
 int php_output_get_start_lineno () ;
 int php_session_remove_cookie () ;
 char* php_url_encode (char*,int) ;
 int sapi_add_header_ex (int ,int,int ,int ) ;
 int session_name ;
 int smart_str_0 (TYPE_1__*) ;
 int smart_str_append_long (TYPE_1__*,char*) ;
 int smart_str_appendc (TYPE_1__*,char) ;
 int smart_str_appendl (TYPE_1__*,char*,int) ;
 int smart_str_appends (TYPE_1__*,char*) ;
 int smart_str_free (TYPE_1__*) ;
 int strlen (char*) ;
 int zend_string_release_ex (char*,int ) ;

__attribute__((used)) static int php_session_send_cookie(void)
{
 smart_str ncookie = {0};
 zend_string *date_fmt = ((void*)0);
 zend_string *e_session_name, *e_id;

 if (SG(headers_sent)) {
  const char *output_start_filename = php_output_get_start_filename();
  int output_start_lineno = php_output_get_start_lineno();

  if (output_start_filename) {
   php_error_docref(((void*)0), E_WARNING, "Cannot send session cookie - headers already sent by (output started at %s:%d)", output_start_filename, output_start_lineno);
  } else {
   php_error_docref(((void*)0), E_WARNING, "Cannot send session cookie - headers already sent");
  }
  return FAILURE;
 }


 e_session_name = php_url_encode(PS(session_name), strlen(PS(session_name)));
 e_id = php_url_encode(ZSTR_VAL(PS(id)), ZSTR_LEN(PS(id)));

 smart_str_appendl(&ncookie, "Set-Cookie: ", sizeof("Set-Cookie: ")-1);
 smart_str_appendl(&ncookie, ZSTR_VAL(e_session_name), ZSTR_LEN(e_session_name));
 smart_str_appendc(&ncookie, '=');
 smart_str_appendl(&ncookie, ZSTR_VAL(e_id), ZSTR_LEN(e_id));

 zend_string_release_ex(e_session_name, 0);
 zend_string_release_ex(e_id, 0);

 if (PS(cookie_lifetime) > 0) {
  struct timeval tv;
  time_t t;

  gettimeofday(&tv, ((void*)0));
  t = tv.tv_sec + PS(cookie_lifetime);

  if (t > 0) {
   date_fmt = php_format_date("D, d-M-Y H:i:s T", sizeof("D, d-M-Y H:i:s T")-1, t, 0);
   smart_str_appends(&ncookie, COOKIE_EXPIRES);
   smart_str_appendl(&ncookie, ZSTR_VAL(date_fmt), ZSTR_LEN(date_fmt));
   zend_string_release_ex(date_fmt, 0);

   smart_str_appends(&ncookie, COOKIE_MAX_AGE);
   smart_str_append_long(&ncookie, PS(cookie_lifetime));
  }
 }

 if (PS(cookie_path)[0]) {
  smart_str_appends(&ncookie, COOKIE_PATH);
  smart_str_appends(&ncookie, PS(cookie_path));
 }

 if (PS(cookie_domain)[0]) {
  smart_str_appends(&ncookie, COOKIE_DOMAIN);
  smart_str_appends(&ncookie, PS(cookie_domain));
 }

 if (PS(cookie_secure)) {
  smart_str_appends(&ncookie, COOKIE_SECURE);
 }

 if (PS(cookie_httponly)) {
  smart_str_appends(&ncookie, COOKIE_HTTPONLY);
 }

 if (PS(cookie_samesite)[0]) {
     smart_str_appends(&ncookie, COOKIE_SAMESITE);
     smart_str_appends(&ncookie, PS(cookie_samesite));
    }

 smart_str_0(&ncookie);

 php_session_remove_cookie();


 sapi_add_header_ex(estrndup(ZSTR_VAL(ncookie.s), ZSTR_LEN(ncookie.s)), ZSTR_LEN(ncookie.s), 0, 0);
 smart_str_free(&ncookie);

 return SUCCESS;
}
