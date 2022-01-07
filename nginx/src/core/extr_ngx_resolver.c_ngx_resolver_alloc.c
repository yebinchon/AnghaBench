
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void u_char ;
struct TYPE_3__ {int log; } ;
typedef TYPE_1__ ngx_resolver_t ;


 void* ngx_alloc (size_t,int ) ;

__attribute__((used)) static void *
ngx_resolver_alloc(ngx_resolver_t *r, size_t size)
{
    u_char *p;



    p = ngx_alloc(size, r->log);



    return p;
}
