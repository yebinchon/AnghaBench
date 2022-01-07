
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int file_fd; int content_sender; scalar_t__ content_sender_initialized; int addr_str; int addr; int request; } ;
typedef TYPE_1__ php_cli_server_client ;


 int close (int) ;
 int pefree (int ,int) ;
 int php_cli_server_content_sender_dtor (int *) ;
 int php_cli_server_request_dtor (int *) ;

__attribute__((used)) static void php_cli_server_client_dtor(php_cli_server_client *client)
{
 php_cli_server_request_dtor(&client->request);
 if (client->file_fd >= 0) {
  close(client->file_fd);
  client->file_fd = -1;
 }
 pefree(client->addr, 1);
 pefree(client->addr_str, 1);
 if (client->content_sender_initialized) {
  php_cli_server_content_sender_dtor(&client->content_sender);
 }
}
