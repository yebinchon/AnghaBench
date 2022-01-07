
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ content; int headers_original_case; int headers; scalar_t__ query_string; scalar_t__ path_info; scalar_t__ path_translated; scalar_t__ vpath; scalar_t__ request_uri; } ;
typedef TYPE_1__ php_cli_server_request ;


 int pefree (scalar_t__,int) ;
 int zend_hash_destroy (int *) ;

__attribute__((used)) static void php_cli_server_request_dtor(php_cli_server_request *req)
{
 if (req->request_uri) {
  pefree(req->request_uri, 1);
 }
 if (req->vpath) {
  pefree(req->vpath, 1);
 }
 if (req->path_translated) {
  pefree(req->path_translated, 1);
 }
 if (req->path_info) {
  pefree(req->path_info, 1);
 }
 if (req->query_string) {
  pefree(req->query_string, 1);
 }
 zend_hash_destroy(&req->headers);
 zend_hash_destroy(&req->headers_original_case);
 if (req->content) {
  pefree(req->content, 1);
 }
}
