
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* r; } ;
typedef TYPE_2__ php_struct ;
struct TYPE_4__ {int request_time; } ;


 TYPE_2__* SG (int ) ;
 scalar_t__ apr_time_as_msec (int ) ;
 int server_context ;

__attribute__((used)) static double php_apache_sapi_get_request_time(void)
{
 php_struct *ctx = SG(server_context);
 return ((double) apr_time_as_msec(ctx->r->request_time)) / 1000.0;
}
