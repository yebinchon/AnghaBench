
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sock; int addr_str; } ;
typedef TYPE_1__ php_cli_server_client ;
struct TYPE_6__ {int clients; } ;
typedef TYPE_2__ php_cli_server ;


 int PHP_CLI_SERVER_LOG_MESSAGE ;
 int php_cli_server_logf (int ,char*,int ) ;
 int zend_hash_index_del (int *,int ) ;

__attribute__((used)) static void php_cli_server_close_connection(php_cli_server *server, php_cli_server_client *client)
{
 php_cli_server_logf(PHP_CLI_SERVER_LOG_MESSAGE, "%s Closing", client->addr_str);

 zend_hash_index_del(&server->clients, client->sock);
}
