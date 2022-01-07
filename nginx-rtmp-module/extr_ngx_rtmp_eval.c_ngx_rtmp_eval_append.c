
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_log_t ;
struct TYPE_3__ {void* last; void* end; void* pos; void* start; } ;
typedef TYPE_1__ ngx_buf_t ;


 void* ngx_alloc (size_t,int *) ;
 void* ngx_cpymem (void*,void*,size_t) ;

__attribute__((used)) static void
ngx_rtmp_eval_append(ngx_buf_t *b, void *data, size_t len, ngx_log_t *log)
{
    size_t buf_len;

    if (b->last + len > b->end) {
        buf_len = 2 * (b->last - b->pos) + len;

        b->start = ngx_alloc(buf_len, log);
        if (b->start == ((void*)0)) {
            return;
        }

        b->last = ngx_cpymem(b->start, b->pos, b->last - b->pos);
        b->pos = b->start;
        b->end = b->start + buf_len;
    }

    b->last = ngx_cpymem(b->last, data, len);
}
