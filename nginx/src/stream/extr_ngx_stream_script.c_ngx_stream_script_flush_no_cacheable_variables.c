
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_7__ {TYPE_1__* variables; } ;
typedef TYPE_2__ ngx_stream_session_t ;
struct TYPE_8__ {size_t* elts; size_t nelts; } ;
typedef TYPE_3__ ngx_array_t ;
struct TYPE_6__ {scalar_t__ not_found; scalar_t__ valid; scalar_t__ no_cacheable; } ;



void
ngx_stream_script_flush_no_cacheable_variables(ngx_stream_session_t *s,
    ngx_array_t *indices)
{
    ngx_uint_t n, *index;

    if (indices) {
        index = indices->elts;
        for (n = 0; n < indices->nelts; n++) {
            if (s->variables[index[n]].no_cacheable) {
                s->variables[index[n]].valid = 0;
                s->variables[index[n]].not_found = 0;
            }
        }
    }
}
