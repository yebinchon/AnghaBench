
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PHP_CLI_SERVER_LOG_MESSAGE ;
 int sapi_cli_server_log_write (int ,char*) ;

__attribute__((used)) static void sapi_cli_server_log_message(char *msg, int syslog_type_int)
{
 sapi_cli_server_log_write(PHP_CLI_SERVER_LOG_MESSAGE, msg);
}
