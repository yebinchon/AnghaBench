
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tb_change_cnt; scalar_t__ tb_off; scalar_t__ tb_len; int tb_buflen; int tb_noremap; int * tb_buf; } ;


 int TYPELEN_INIT ;
 int noremapbuf_init ;
 TYPE_1__ typebuf ;
 int * typebuf_init ;

__attribute__((used)) static void
init_typebuf()
{
    if (typebuf.tb_buf == ((void*)0))
    {
 typebuf.tb_buf = typebuf_init;
 typebuf.tb_noremap = noremapbuf_init;
 typebuf.tb_buflen = TYPELEN_INIT;
 typebuf.tb_len = 0;
 typebuf.tb_off = 0;
 typebuf.tb_change_cnt = 1;
    }
}
