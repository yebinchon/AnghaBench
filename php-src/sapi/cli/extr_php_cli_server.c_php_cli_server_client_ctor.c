
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_string ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int php_socket_t ;
struct TYPE_3__ {int file_fd; scalar_t__ content_sender_initialized; int request; scalar_t__ post_read_offset; scalar_t__ current_header_value_len; int * current_header_value; scalar_t__ current_header_name_allocated; scalar_t__ current_header_name_len; int * current_header_name; int last_header_element; scalar_t__ request_read; int parser; int addr_str_len; int addr_str; int addr_len; struct sockaddr* addr; int sock; int * server; } ;
typedef TYPE_1__ php_cli_server_client ;
typedef int php_cli_server ;


 scalar_t__ FAILURE ;
 int HEADER_NONE ;
 int PHP_HTTP_REQUEST ;
 int SUCCESS ;
 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int pestrndup (int ,int ,int) ;
 scalar_t__ php_cli_server_request_ctor (int *) ;
 int php_http_parser_init (int *,int ) ;
 int php_network_populate_name_from_sockaddr (struct sockaddr*,int ,int **,int *,int ) ;
 int zend_string_release_ex (int *,int ) ;

__attribute__((used)) static int php_cli_server_client_ctor(php_cli_server_client *client, php_cli_server *server, php_socket_t client_sock, struct sockaddr *addr, socklen_t addr_len)
{
 client->server = server;
 client->sock = client_sock;
 client->addr = addr;
 client->addr_len = addr_len;
 {
  zend_string *addr_str = 0;

  php_network_populate_name_from_sockaddr(addr, addr_len, &addr_str, ((void*)0), 0);
  client->addr_str = pestrndup(ZSTR_VAL(addr_str), ZSTR_LEN(addr_str), 1);
  client->addr_str_len = ZSTR_LEN(addr_str);
  zend_string_release_ex(addr_str, 0);
 }
 php_http_parser_init(&client->parser, PHP_HTTP_REQUEST);
 client->request_read = 0;

 client->last_header_element = HEADER_NONE;
 client->current_header_name = ((void*)0);
 client->current_header_name_len = 0;
 client->current_header_name_allocated = 0;
 client->current_header_value = ((void*)0);
 client->current_header_value_len = 0;

 client->post_read_offset = 0;
 if (FAILURE == php_cli_server_request_ctor(&client->request)) {
  return FAILURE;
 }
 client->content_sender_initialized = 0;
 client->file_fd = -1;
 return SUCCESS;
}
