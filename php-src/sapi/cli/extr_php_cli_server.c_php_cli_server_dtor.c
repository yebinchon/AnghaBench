
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_long ;
struct TYPE_3__ {scalar_t__ router; scalar_t__ document_root; scalar_t__ host; int server_sock; int extension_mime_types; int clients; } ;
typedef TYPE_1__ php_cli_server ;


 scalar_t__ FAILURE ;
 int WIFEXITED (int) ;
 int WIFSIGNALED (int) ;
 scalar_t__ ZEND_VALID_SOCKET (int ) ;
 int closesocket (int ) ;
 int free (int *) ;
 scalar_t__ getpid () ;
 int pefree (scalar_t__,int) ;
 scalar_t__ php_cli_server_master ;
 int * php_cli_server_workers ;
 int php_cli_server_workers_max ;
 scalar_t__ waitpid (int ,int*,int ) ;
 int zend_hash_destroy (int *) ;

__attribute__((used)) static void php_cli_server_dtor(php_cli_server *server)
{
 zend_hash_destroy(&server->clients);
 zend_hash_destroy(&server->extension_mime_types);
 if (ZEND_VALID_SOCKET(server->server_sock)) {
  closesocket(server->server_sock);
 }
 if (server->host) {
  pefree(server->host, 1);
 }
 if (server->document_root) {
  pefree(server->document_root, 1);
 }
 if (server->router) {
  pefree(server->router, 1);
 }
}
