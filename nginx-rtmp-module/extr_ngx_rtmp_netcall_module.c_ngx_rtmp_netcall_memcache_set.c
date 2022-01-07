
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_11__ {scalar_t__ len; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_rtmp_session_t ;
typedef int ngx_pool_t ;
struct TYPE_12__ {TYPE_3__* buf; int * next; } ;
typedef TYPE_2__ ngx_chain_t ;
struct TYPE_13__ {int pos; int last; } ;
typedef TYPE_3__ ngx_buf_t ;


 int NGX_INT_T_LEN ;
 TYPE_2__* ngx_alloc_chain_link (int *) ;
 TYPE_3__* ngx_create_temp_buf (int *,scalar_t__) ;
 int ngx_sprintf (int ,char*,TYPE_1__*,int ,int ,int ,TYPE_1__*) ;

ngx_chain_t *
ngx_rtmp_netcall_memcache_set(ngx_rtmp_session_t *s, ngx_pool_t *pool,
        ngx_str_t *key, ngx_str_t *value, ngx_uint_t flags, ngx_uint_t sec)
{
    ngx_chain_t *cl;
    ngx_buf_t *b;

    cl = ngx_alloc_chain_link(pool);
    if (cl == ((void*)0)) {
        return ((void*)0);
    }

    b = ngx_create_temp_buf(pool, sizeof("set ") - 1 + key->len +
                            (1 + NGX_INT_T_LEN) * 3 +
                            (sizeof("\r\n") - 1) * 2 + value->len);

    if (b == ((void*)0)) {
        return ((void*)0);
    }

    cl->next = ((void*)0);
    cl->buf = b;

    b->last = ngx_sprintf(b->pos, "set %V %ui %ui %ui\r\n%V\r\n",
                          key, flags, sec, (ngx_uint_t) value->len, value);

    return cl;
}
