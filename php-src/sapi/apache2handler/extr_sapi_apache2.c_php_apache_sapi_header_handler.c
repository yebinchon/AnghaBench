
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sapi_headers_struct ;
struct TYPE_6__ {int header; } ;
typedef TYPE_1__ sapi_header_struct ;
typedef int sapi_header_op_enum ;
struct TYPE_7__ {TYPE_4__* r; int content_type; } ;
typedef TYPE_2__ php_struct ;
typedef int apr_off_t ;
struct TYPE_8__ {int headers_out; } ;


 int APR_SUCCESS ;




 TYPE_2__* SG (int ) ;
 int ap_set_content_length (TYPE_4__*,int ) ;
 int apr_strtoff (int *,char*,char**,int) ;
 int apr_table_add (int ,int ,char*) ;
 int apr_table_clear (int ) ;
 int apr_table_set (int ,int ,char*) ;
 int apr_table_unset (int ,int ) ;
 int efree (int ) ;
 int estrdup (char*) ;
 int server_context ;
 int strcasecmp (int ,char*) ;
 char* strchr (int ,char) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static int
php_apache_sapi_header_handler(sapi_header_struct *sapi_header, sapi_header_op_enum op, sapi_headers_struct *sapi_headers)
{
 php_struct *ctx;
 char *val, *ptr;

 ctx = SG(server_context);

 switch (op) {
  case 130:
   apr_table_unset(ctx->r->headers_out, sapi_header->header);
   return 0;

  case 129:
   apr_table_clear(ctx->r->headers_out);
   return 0;

  case 131:
  case 128:
   val = strchr(sapi_header->header, ':');

   if (!val) {
    return 0;
   }
   ptr = val;

   *val = '\0';

   do {
    val++;
   } while (*val == ' ');

   if (!strcasecmp(sapi_header->header, "content-type")) {
    if (ctx->content_type) {
     efree(ctx->content_type);
    }
    ctx->content_type = estrdup(val);
   } else if (!strcasecmp(sapi_header->header, "content-length")) {
    apr_off_t clen = 0;

    if (APR_SUCCESS != apr_strtoff(&clen, val, (char **) ((void*)0), 10)) {


     clen = (apr_off_t) strtol(val, (char **) ((void*)0), 10);
    }

    ap_set_content_length(ctx->r, clen);
   } else if (op == 128) {
    apr_table_set(ctx->r->headers_out, sapi_header->header, val);
   } else {
    apr_table_add(ctx->r->headers_out, sapi_header->header, val);
   }

   *ptr = ':';

   return 131;

  default:
   return 0;
 }
}
