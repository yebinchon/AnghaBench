
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tb_change_cnt; scalar_t__ tb_no_abbr_cnt; scalar_t__ tb_silent; scalar_t__ tb_maplen; scalar_t__ tb_len; scalar_t__ tb_off; int tb_buflen; int * tb_noremap; int * tb_buf; } ;


 int FAIL ;
 int OK ;
 int TYPELEN_INIT ;
 void* alloc (int ) ;
 int free_typebuf () ;
 TYPE_1__ typebuf ;

int
alloc_typebuf()
{
    typebuf.tb_buf = alloc(TYPELEN_INIT);
    typebuf.tb_noremap = alloc(TYPELEN_INIT);
    if (typebuf.tb_buf == ((void*)0) || typebuf.tb_noremap == ((void*)0))
    {
 free_typebuf();
 return FAIL;
    }
    typebuf.tb_buflen = TYPELEN_INIT;
    typebuf.tb_off = 0;
    typebuf.tb_len = 0;
    typebuf.tb_maplen = 0;
    typebuf.tb_silent = 0;
    typebuf.tb_no_abbr_cnt = 0;
    if (++typebuf.tb_change_cnt == 0)
 typebuf.tb_change_cnt = 1;
    return OK;
}
