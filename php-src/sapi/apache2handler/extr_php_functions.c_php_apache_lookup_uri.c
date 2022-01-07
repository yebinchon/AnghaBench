
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int request_rec ;
struct TYPE_4__ {TYPE_2__* r; } ;
typedef TYPE_1__ php_struct ;
struct TYPE_5__ {int output_filters; } ;


 TYPE_1__* SG (int ) ;
 int * ap_sub_req_lookup_uri (char*,TYPE_2__*,int ) ;
 int server_context ;

__attribute__((used)) static request_rec *php_apache_lookup_uri(char *filename)
{
 php_struct *ctx = SG(server_context);

 if (!filename || !ctx || !ctx->r) {
  return ((void*)0);
 }

 return ap_sub_req_lookup_uri(filename, ctx->r, ctx->r->output_filters);
}
