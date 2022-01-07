
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_pool_t ;


 int ngx_memcpy (int *,int ,int ) ;
 int * ngx_pnalloc (int *,int ) ;

u_char *
ngx_pstrdup(ngx_pool_t *pool, ngx_str_t *src)
{
    u_char *dst;

    dst = ngx_pnalloc(pool, src->len);
    if (dst == ((void*)0)) {
        return ((void*)0);
    }

    ngx_memcpy(dst, src->data, src->len);

    return dst;
}
