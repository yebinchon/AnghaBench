
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_chmap_sel {int allow_any; } ;



void mp_chmap_sel_add_any(struct mp_chmap_sel *s)
{
    s->allow_any = 1;
}
