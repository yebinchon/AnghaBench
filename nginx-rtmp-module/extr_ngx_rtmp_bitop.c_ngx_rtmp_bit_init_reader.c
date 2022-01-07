
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int * last; int * pos; } ;
typedef TYPE_1__ ngx_rtmp_bit_reader_t ;


 int ngx_memzero (TYPE_1__*,int) ;

void
ngx_rtmp_bit_init_reader(ngx_rtmp_bit_reader_t *br, u_char *pos, u_char *last)
{
    ngx_memzero(br, sizeof(ngx_rtmp_bit_reader_t));

    br->pos = pos;
    br->last = last;
}
