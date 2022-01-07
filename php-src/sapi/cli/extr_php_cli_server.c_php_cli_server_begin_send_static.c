
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_13__ ;


struct TYPE_23__ {int s; int member_0; } ;
typedef TYPE_3__ smart_str ;
struct TYPE_20__ {int buffer; } ;
struct TYPE_21__ {int st_size; } ;
struct TYPE_22__ {char* path_translated; int path_translated_len; TYPE_1__ sb; int protocol_version; int ext_len; int ext; } ;
struct TYPE_24__ {int content_sender_initialized; int file_fd; int sock; TYPE_13__ content_sender; TYPE_2__ request; } ;
typedef TYPE_4__ php_cli_server_client ;
typedef int php_cli_server_chunk ;
struct TYPE_25__ {int poller; } ;
typedef TYPE_5__ php_cli_server ;


 int FAILURE ;
 int O_RDONLY ;
 int POLLOUT ;
 int SUCCESS ;
 int ZSTR_LEN (int ) ;
 int ZSTR_VAL (int ) ;
 int append_essential_headers (TYPE_3__*,TYPE_4__*,int) ;
 int append_http_status_line (TYPE_3__*,int ,int,int) ;
 char* get_mime_type (TYPE_5__*,int ,int ) ;
 int open (char*,int ) ;
 int php_cli_server_buffer_append (int *,int *) ;
 int * php_cli_server_chunk_heap_new (int ,int ,int ) ;
 int php_cli_server_content_sender_ctor (TYPE_13__*) ;
 int php_cli_server_log_response (TYPE_4__*,int,int *) ;
 int php_cli_server_poller_add (int *,int ,int ) ;
 int php_cli_server_send_error_page (TYPE_5__*,TYPE_4__*,int) ;
 int php_win32_ioutil_open (char*,int ) ;
 int smart_str_append_unsigned_ex (TYPE_3__*,int ,int) ;
 int smart_str_appendl_ex (TYPE_3__*,char*,int,int) ;
 int smart_str_appends_ex (TYPE_3__*,char const*,int) ;
 int smart_str_free_ex (TYPE_3__*,int) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int php_cli_server_begin_send_static(php_cli_server *server, php_cli_server_client *client)
{
 int fd;
 int status = 200;

 if (client->request.path_translated && strlen(client->request.path_translated) != client->request.path_translated_len) {

  return php_cli_server_send_error_page(server, client, 400);
 }
 fd = client->request.path_translated ? open(client->request.path_translated, O_RDONLY): -1;

 if (fd < 0) {
  return php_cli_server_send_error_page(server, client, 404);
 }

 php_cli_server_content_sender_ctor(&client->content_sender);
 client->content_sender_initialized = 1;
 client->file_fd = fd;

 {
  php_cli_server_chunk *chunk;
  smart_str buffer = { 0 };
  const char *mime_type = get_mime_type(server, client->request.ext, client->request.ext_len);

  append_http_status_line(&buffer, client->request.protocol_version, status, 1);
  if (!buffer.s) {

   php_cli_server_log_response(client, 500, ((void*)0));
   return FAILURE;
  }
  append_essential_headers(&buffer, client, 1);
  if (mime_type) {
   smart_str_appendl_ex(&buffer, "Content-Type: ", sizeof("Content-Type: ") - 1, 1);
   smart_str_appends_ex(&buffer, mime_type, 1);
   if (strncmp(mime_type, "text/", 5) == 0) {
    smart_str_appends_ex(&buffer, "; charset=UTF-8", 1);
   }
   smart_str_appendl_ex(&buffer, "\r\n", 2, 1);
  }
  smart_str_appends_ex(&buffer, "Content-Length: ", 1);
  smart_str_append_unsigned_ex(&buffer, client->request.sb.st_size, 1);
  smart_str_appendl_ex(&buffer, "\r\n", 2, 1);
  smart_str_appendl_ex(&buffer, "\r\n", 2, 1);
  chunk = php_cli_server_chunk_heap_new(buffer.s, ZSTR_VAL(buffer.s), ZSTR_LEN(buffer.s));
  if (!chunk) {
   smart_str_free_ex(&buffer, 1);
   php_cli_server_log_response(client, 500, ((void*)0));
   return FAILURE;
  }
  php_cli_server_buffer_append(&client->content_sender.buffer, chunk);
 }
 php_cli_server_log_response(client, 200, ((void*)0));
 php_cli_server_poller_add(&server->poller, POLLOUT, client->sock);
 return SUCCESS;
}
