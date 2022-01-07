
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int request_rec ;
struct TYPE_3__ {int * r; } ;
typedef TYPE_1__ php_struct ;


 TYPE_1__* SG (int ) ;
 scalar_t__ ap_rwrite (char const*,size_t,int *) ;
 int php_handle_aborted_connection () ;
 int server_context ;

__attribute__((used)) static size_t
php_apache_sapi_ub_write(const char *str, size_t str_length)
{
 request_rec *r;
 php_struct *ctx;

 ctx = SG(server_context);
 r = ctx->r;

 if (ap_rwrite(str, str_length, r) < 0) {
  php_handle_aborted_connection();
 }

 return str_length;
}
