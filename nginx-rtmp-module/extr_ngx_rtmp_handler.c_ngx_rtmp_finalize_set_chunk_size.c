
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ in_chunk_size_changing; int * in_old_pool; } ;
typedef TYPE_1__ ngx_rtmp_session_t ;
typedef int ngx_int_t ;


 int NGX_OK ;
 int ngx_destroy_pool (int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_finalize_set_chunk_size(ngx_rtmp_session_t *s)
{
    if (s->in_chunk_size_changing && s->in_old_pool) {
        ngx_destroy_pool(s->in_old_pool);
        s->in_old_pool = ((void*)0);
        s->in_chunk_size_changing = 0;
    }
    return NGX_OK;
}
