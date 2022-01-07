
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tb_buf; scalar_t__ tb_noremap; } ;


 int EMSG2 (int ,char*) ;
 int _ (int ) ;
 int e_intern2 ;
 scalar_t__ noremapbuf_init ;
 TYPE_1__ typebuf ;
 scalar_t__ typebuf_init ;
 int vim_free (scalar_t__) ;

void
free_typebuf()
{
    if (typebuf.tb_buf == typebuf_init)
 EMSG2(_(e_intern2), "Free typebuf 1");
    else
 vim_free(typebuf.tb_buf);
    if (typebuf.tb_noremap == noremapbuf_init)
 EMSG2(_(e_intern2), "Free typebuf 2");
    else
 vim_free(typebuf.tb_noremap);
}
