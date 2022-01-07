
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_log_t ;


 void* ngx_alloc (size_t,int *) ;
 int ngx_memzero (void*,size_t) ;

void *
ngx_calloc(size_t size, ngx_log_t *log)
{
    void *p;

    p = ngx_alloc(size, log);

    if (p) {
        ngx_memzero(p, size);
    }

    return p;
}
