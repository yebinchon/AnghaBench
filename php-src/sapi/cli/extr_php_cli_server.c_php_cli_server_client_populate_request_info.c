
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* content_type; int * auth_digest; int auth_password; int auth_user; int content_length; int query_string; int path_translated; int request_uri; int proto_num; int request_method; } ;
typedef TYPE_2__ sapi_request_info ;
struct TYPE_6__ {int headers; int content_len; int query_string; int path_translated; int request_uri; int protocol_version; int request_method; } ;
struct TYPE_8__ {TYPE_1__ request; } ;
typedef TYPE_3__ php_cli_server_client ;


 int php_http_method_str (int ) ;
 char* zend_hash_str_find_ptr (int *,char*,int) ;

__attribute__((used)) static void php_cli_server_client_populate_request_info(const php_cli_server_client *client, sapi_request_info *request_info)
{
 char *val;

 request_info->request_method = php_http_method_str(client->request.request_method);
 request_info->proto_num = client->request.protocol_version;
 request_info->request_uri = client->request.request_uri;
 request_info->path_translated = client->request.path_translated;
 request_info->query_string = client->request.query_string;
 request_info->content_length = client->request.content_len;
 request_info->auth_user = request_info->auth_password = request_info->auth_digest = ((void*)0);
 if (((void*)0) != (val = zend_hash_str_find_ptr(&client->request.headers, "content-type", sizeof("content-type")-1))) {
  request_info->content_type = val;
 }
}
