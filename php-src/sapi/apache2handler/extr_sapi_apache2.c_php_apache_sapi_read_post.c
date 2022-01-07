
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int input_filters; } ;
typedef TYPE_1__ request_rec ;
struct TYPE_5__ {int * brigade; TYPE_1__* r; } ;
typedef TYPE_2__ php_struct ;
typedef size_t apr_size_t ;
typedef int apr_bucket_brigade ;


 int APR_BLOCK_READ ;
 scalar_t__ APR_SUCCESS ;
 int AP_MODE_READBYTES ;
 TYPE_2__* SG (int ) ;
 scalar_t__ ap_get_brigade (int ,int *,int ,int ,size_t) ;
 int apr_brigade_cleanup (int *) ;
 int apr_brigade_flatten (int *,char*,size_t*) ;
 int server_context ;

__attribute__((used)) static apr_size_t
php_apache_sapi_read_post(char *buf, size_t count_bytes)
{
 apr_size_t len, tlen=0;
 php_struct *ctx = SG(server_context);
 request_rec *r;
 apr_bucket_brigade *brigade;

 r = ctx->r;
 brigade = ctx->brigade;
 len = count_bytes;







 while (ap_get_brigade(r->input_filters, brigade, AP_MODE_READBYTES, APR_BLOCK_READ, len) == APR_SUCCESS) {
  apr_brigade_flatten(brigade, buf, &len);
  apr_brigade_cleanup(brigade);
  tlen += len;
  if (tlen == count_bytes || !len) {
   break;
  }
  buf += len;
  len = count_bytes - tlen;
 }

 return tlen;
}
