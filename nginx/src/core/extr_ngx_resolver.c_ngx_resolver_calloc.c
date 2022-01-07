
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u_char ;
typedef int ngx_resolver_t ;


 int ngx_memzero (void*,size_t) ;
 void* ngx_resolver_alloc (int *,size_t) ;

__attribute__((used)) static void *
ngx_resolver_calloc(ngx_resolver_t *r, size_t size)
{
    u_char *p;

    p = ngx_resolver_alloc(r, size);

    if (p) {
        ngx_memzero(p, size);
    }

    return p;
}
