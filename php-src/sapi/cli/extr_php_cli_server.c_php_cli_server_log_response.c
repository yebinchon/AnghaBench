
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_bool ;
struct TYPE_5__ {int request_uri; } ;
struct TYPE_6__ {TYPE_1__ request; int addr_str; } ;
typedef TYPE_2__ php_cli_server_client ;
struct TYPE_7__ {int request_method; } ;


 scalar_t__ CLI_SERVER_G (int) ;





 scalar_t__ OUTPUT_IS_TTY ;
 int PG (int ) ;
 int PHP_CLI_SERVER_LOG_MESSAGE ;
 TYPE_4__ SG (int ) ;
 int efree (char*) ;
 int last_error_file ;
 int last_error_lineno ;
 int last_error_message ;
 int last_error_type ;
 scalar_t__ php_cli_is_output_tty () ;
 int php_cli_server_logf (int ,char*,...) ;
 int request_info ;
 int spprintf (char**,int ,char*,...) ;

__attribute__((used)) static void php_cli_server_log_response(php_cli_server_client *client, int status, const char *message)
{
 int color = 0, effective_status = status;
 char *basic_buf, *message_buf = "", *error_buf = "";
 zend_bool append_error_message = 0;

 if (PG(last_error_message)) {
  switch (PG(last_error_type)) {
   case 130:
   case 131:
   case 132:
   case 128:
   case 129:
    if (status == 200) {

     effective_status = 500;
    }

    append_error_message = 1;
    break;
  }
 }
 spprintf(&basic_buf, 0, "%s [%d]: %s %s", client->addr_str, status, SG(request_info).request_method, client->request.request_uri);
 if (!basic_buf) {
  return;
 }


 if (message) {
  spprintf(&message_buf, 0, " - %s", message);
  if (!message_buf) {
   efree(basic_buf);
   return;
  }
 }


 if (append_error_message) {
  spprintf(&error_buf, 0, " - %s in %s on line %d", PG(last_error_message), PG(last_error_file), PG(last_error_lineno));
  if (!error_buf) {
   efree(basic_buf);
   if (message) {
    efree(message_buf);
   }
   return;
  }
 }

 if (color) {
  php_cli_server_logf(PHP_CLI_SERVER_LOG_MESSAGE, "\x1b[3%dm%s%s%s\x1b[0m", color, basic_buf, message_buf, error_buf);
 } else {
  php_cli_server_logf(PHP_CLI_SERVER_LOG_MESSAGE, "%s%s%s", basic_buf, message_buf, error_buf);
 }

 efree(basic_buf);
 if (message) {
  efree(message_buf);
 }
 if (append_error_message) {
  efree(error_buf);
 }
}
