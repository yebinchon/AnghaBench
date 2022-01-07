
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_resolver_t ;


 int ngx_memcpy (void*,void*,size_t) ;
 void* ngx_resolver_alloc (int *,size_t) ;

__attribute__((used)) static void *
ngx_resolver_dup(ngx_resolver_t *r, void *src, size_t size)
{
    void *dst;

    dst = ngx_resolver_alloc(r, size);

    if (dst == ((void*)0)) {
        return dst;
    }

    ngx_memcpy(dst, src, size);

    return dst;
}
