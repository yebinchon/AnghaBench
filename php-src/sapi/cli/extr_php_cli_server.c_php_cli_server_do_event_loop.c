
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int member_0; int member_1; } ;
struct TYPE_4__ {int poller; scalar_t__ is_running; } ;
typedef TYPE_1__ php_cli_server ;


 int FAILURE ;
 scalar_t__ PHP_CLI_SERVER_LOG_ERROR ;
 int SOCK_EINTR ;
 int SUCCESS ;
 int efree (char*) ;
 int php_cli_server_do_event_for_each_fd (TYPE_1__*,int ,int ) ;
 scalar_t__ php_cli_server_log_level ;
 int php_cli_server_logf (scalar_t__,char*,char*) ;
 int php_cli_server_poller_poll (int *,struct timeval*) ;
 int php_cli_server_recv_event_read_request ;
 int php_cli_server_send_event ;
 int php_socket_errno () ;
 char* php_socket_strerror (int,int *,int ) ;

__attribute__((used)) static int php_cli_server_do_event_loop(php_cli_server *server)
{
 int retval = SUCCESS;
 while (server->is_running) {
  struct timeval tv = { 1, 0 };
  int n = php_cli_server_poller_poll(&server->poller, &tv);
  if (n > 0) {
   php_cli_server_do_event_for_each_fd(server,
     php_cli_server_recv_event_read_request,
     php_cli_server_send_event);
  } else if (n == 0) {

  } else {
   int err = php_socket_errno();
   if (err != SOCK_EINTR) {
    if (php_cli_server_log_level >= PHP_CLI_SERVER_LOG_ERROR) {
     char *errstr = php_socket_strerror(err, ((void*)0), 0);
     php_cli_server_logf(PHP_CLI_SERVER_LOG_ERROR, "%s", errstr);
     efree(errstr);
    }
    retval = FAILURE;
    goto out;
   }
  }
 }
out:
 return retval;
}
