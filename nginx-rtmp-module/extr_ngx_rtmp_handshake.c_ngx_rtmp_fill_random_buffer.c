
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct TYPE_3__ {scalar_t__* last; scalar_t__* end; } ;
typedef TYPE_1__ ngx_buf_t ;


 scalar_t__ rand () ;

__attribute__((used)) static void
ngx_rtmp_fill_random_buffer(ngx_buf_t *b)
{
    for (; b->last != b->end; ++b->last) {
        *b->last = (u_char) rand();
    }
}
