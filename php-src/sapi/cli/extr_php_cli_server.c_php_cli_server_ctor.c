
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_string ;
typedef int php_socket_t ;
struct TYPE_4__ {int server_sock; char* host; int port; char* document_root; size_t document_root_len; char* router; size_t router_len; int is_running; int clients; int poller; int socklen; int address_family; } ;
typedef TYPE_1__ php_cli_server ;


 int FAILURE ;
 int PHP_CLI_SERVER_LOG_ERROR ;
 int POLLIN ;
 int SOCK_ERR ;
 int SOCK_STREAM ;
 int SUCCESS ;
 char* ZSTR_VAL (int *) ;
 int closesocket (int) ;
 int fprintf (int ,char*,char const*) ;
 int mime_type_map ;
 int pefree (char*,int) ;
 char* pestrdup (char const*,int) ;
 char* pestrndup (char const*,size_t,int) ;
 int php_cli_server_client_dtor_wrapper ;
 int php_cli_server_logf (int ,char*,char*,int,char*) ;
 int php_cli_server_mime_type_ctor (TYPE_1__*,int ) ;
 int php_cli_server_poller_add (int *,int ,int) ;
 int php_cli_server_poller_ctor (int *) ;
 int php_network_listen_socket (char*,int*,int ,int *,int *,int **) ;
 int stderr ;
 char* strchr (char*,char) ;
 size_t strlen (char const*) ;
 int strtol (char*,char**,int) ;
 int zend_hash_init (int *,int ,int *,int ,int) ;
 int zend_string_release_ex (int *,int ) ;

__attribute__((used)) static int php_cli_server_ctor(php_cli_server *server, const char *addr, const char *document_root, const char *router)
{
 int retval = SUCCESS;
 char *host = ((void*)0);
 zend_string *errstr = ((void*)0);
 char *_document_root = ((void*)0);
 char *_router = ((void*)0);
 int err = 0;
 int port = 3000;
 php_socket_t server_sock = SOCK_ERR;
 char *p = ((void*)0);

 if (addr[0] == '[') {
  host = pestrdup(addr + 1, 1);
  if (!host) {
   return FAILURE;
  }
  p = strchr(host, ']');
  if (p) {
   *p++ = '\0';
   if (*p == ':') {
    port = strtol(p + 1, &p, 10);
    if (port <= 0 || port > 65535) {
     p = ((void*)0);
    }
   } else if (*p != '\0') {
    p = ((void*)0);
   }
  }
 } else {
  host = pestrdup(addr, 1);
  if (!host) {
   return FAILURE;
  }
  p = strchr(host, ':');
  if (p) {
   *p++ = '\0';
   port = strtol(p, &p, 10);
   if (port <= 0 || port > 65535) {
    p = ((void*)0);
   }
  }
 }
 if (!p) {
  fprintf(stderr, "Invalid address: %s\n", addr);
  retval = FAILURE;
  goto out;
 }

 server_sock = php_network_listen_socket(host, &port, SOCK_STREAM, &server->address_family, &server->socklen, &errstr);
 if (server_sock == SOCK_ERR) {
  php_cli_server_logf(PHP_CLI_SERVER_LOG_ERROR, "Failed to listen on %s:%d (reason: %s)", host, port, errstr ? ZSTR_VAL(errstr) : "?");
  if (errstr) {
   zend_string_release_ex(errstr, 0);
  }
  retval = FAILURE;
  goto out;
 }
 server->server_sock = server_sock;

 err = php_cli_server_poller_ctor(&server->poller);
 if (SUCCESS != err) {
  goto out;
 }

 php_cli_server_poller_add(&server->poller, POLLIN, server_sock);

 server->host = host;
 server->port = port;

 zend_hash_init(&server->clients, 0, ((void*)0), php_cli_server_client_dtor_wrapper, 1);

 {
  size_t document_root_len = strlen(document_root);
  _document_root = pestrndup(document_root, document_root_len, 1);
  if (!_document_root) {
   retval = FAILURE;
   goto out;
  }
  server->document_root = _document_root;
  server->document_root_len = document_root_len;
 }

 if (router) {
  size_t router_len = strlen(router);
  _router = pestrndup(router, router_len, 1);
  if (!_router) {
   retval = FAILURE;
   goto out;
  }
  server->router = _router;
  server->router_len = router_len;
 } else {
  server->router = ((void*)0);
  server->router_len = 0;
 }

 if (php_cli_server_mime_type_ctor(server, mime_type_map) == FAILURE) {
  retval = FAILURE;
  goto out;
 }

 server->is_running = 1;
out:
 if (retval != SUCCESS) {
  if (host) {
   pefree(host, 1);
  }
  if (_document_root) {
   pefree(_document_root, 1);
  }
  if (_router) {
   pefree(_router, 1);
  }
  if (server_sock > -1) {
   closesocket(server_sock);
  }
 }
 return retval;
}
