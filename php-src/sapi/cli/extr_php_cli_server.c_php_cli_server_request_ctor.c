
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ext_len; int * ext; scalar_t__ content_len; int * content; int headers_original_case; int headers; scalar_t__ query_string_len; int * query_string; scalar_t__ path_info_len; int * path_info; scalar_t__ path_translated_len; int * path_translated; scalar_t__ vpath_len; int * vpath; scalar_t__ request_uri_len; int * request_uri; scalar_t__ protocol_version; } ;
typedef TYPE_1__ php_cli_server_request ;


 int SUCCESS ;
 int * char_ptr_dtor_p ;
 int zend_hash_init (int *,int ,int *,int *,int) ;

__attribute__((used)) static int php_cli_server_request_ctor(php_cli_server_request *req)
{
 req->protocol_version = 0;
 req->request_uri = ((void*)0);
 req->request_uri_len = 0;
 req->vpath = ((void*)0);
 req->vpath_len = 0;
 req->path_translated = ((void*)0);
 req->path_translated_len = 0;
 req->path_info = ((void*)0);
 req->path_info_len = 0;
 req->query_string = ((void*)0);
 req->query_string_len = 0;
 zend_hash_init(&req->headers, 0, ((void*)0), char_ptr_dtor_p, 1);
 zend_hash_init(&req->headers_original_case, 0, ((void*)0), ((void*)0), 1);
 req->content = ((void*)0);
 req->content_len = 0;
 req->ext = ((void*)0);
 req->ext_len = 0;
 return SUCCESS;
}
