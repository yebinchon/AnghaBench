
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int php_socket_t ;
struct TYPE_12__ {int (* whandler ) (TYPE_3__*,TYPE_2__*) ;int (* rhandler ) (TYPE_3__*,TYPE_2__*) ;TYPE_3__* server; } ;
typedef TYPE_1__ php_cli_server_do_event_for_each_fd_callback_params ;
struct TYPE_13__ {char* addr_str; int sock; } ;
typedef TYPE_2__ php_cli_server_client ;
struct TYPE_14__ {int socklen; int clients; int poller; int server_sock; } ;
typedef TYPE_3__ php_cli_server ;


 scalar_t__ FAILURE ;
 scalar_t__ PHP_CLI_SERVER_LOG_ERROR ;
 scalar_t__ PHP_CLI_SERVER_LOG_MESSAGE ;
 int POLLIN ;
 int POLLOUT ;
 int SUCCESS ;
 int ZEND_VALID_SOCKET (int ) ;
 int accept (int ,struct sockaddr*,int*) ;
 int closesocket (int ) ;
 int efree (char*) ;
 int pefree (struct sockaddr*,int) ;
 void* pemalloc (int,int) ;
 scalar_t__ php_cli_server_client_ctor (TYPE_2__*,TYPE_3__*,int ,struct sockaddr*,int) ;
 scalar_t__ php_cli_server_log_level ;
 int php_cli_server_logf (scalar_t__,char*,...) ;
 int php_cli_server_poller_add (int *,int,int ) ;
 int php_set_sock_blocking (int ,int ) ;
 int php_socket_errno () ;
 char* php_socket_strerror (int ,int *,int ) ;
 int stub1 (TYPE_3__*,TYPE_2__*) ;
 int stub2 (TYPE_3__*,TYPE_2__*) ;
 TYPE_2__* zend_hash_index_find_ptr (int *,int ) ;
 int zend_hash_index_update_ptr (int *,int ,TYPE_2__*) ;

__attribute__((used)) static int php_cli_server_do_event_for_each_fd_callback(void *_params, php_socket_t fd, int event)
{
 php_cli_server_do_event_for_each_fd_callback_params *params = _params;
 php_cli_server *server = params->server;
 if (server->server_sock == fd) {
  php_cli_server_client *client = ((void*)0);
  php_socket_t client_sock;
  socklen_t socklen = server->socklen;
  struct sockaddr *sa = pemalloc(server->socklen, 1);
  client_sock = accept(server->server_sock, sa, &socklen);
  if (!ZEND_VALID_SOCKET(client_sock)) {
   if (php_cli_server_log_level >= PHP_CLI_SERVER_LOG_ERROR) {
    char *errstr = php_socket_strerror(php_socket_errno(), ((void*)0), 0);
    php_cli_server_logf(PHP_CLI_SERVER_LOG_ERROR,
     "Failed to accept a client (reason: %s)", errstr);
    efree(errstr);
   }
   pefree(sa, 1);
   return SUCCESS;
  }
  if (SUCCESS != php_set_sock_blocking(client_sock, 0)) {
   pefree(sa, 1);
   closesocket(client_sock);
   return SUCCESS;
  }
  client = pemalloc(sizeof(php_cli_server_client), 1);
  if (FAILURE == php_cli_server_client_ctor(client, server, client_sock, sa, socklen)) {
   php_cli_server_logf(PHP_CLI_SERVER_LOG_ERROR, "Failed to create a new request object");
   pefree(sa, 1);
   closesocket(client_sock);
   return SUCCESS;
  }

  php_cli_server_logf(PHP_CLI_SERVER_LOG_MESSAGE, "%s Accepted", client->addr_str);

  zend_hash_index_update_ptr(&server->clients, client_sock, client);

  php_cli_server_poller_add(&server->poller, POLLIN, client->sock);
 } else {
  php_cli_server_client *client;
  if (((void*)0) != (client = zend_hash_index_find_ptr(&server->clients, fd))) {
   if (event & POLLIN) {
    params->rhandler(server, client);
   }
   if (event & POLLOUT) {
    params->whandler(server, client);
   }
  }
 }
 return SUCCESS;
}
