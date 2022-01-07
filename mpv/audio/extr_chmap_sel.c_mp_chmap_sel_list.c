
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_chmap_sel {int num_chmaps; struct mp_chmap* chmaps; } ;
struct mp_chmap {int dummy; } ;


 int mp_chmap_sel_fallback (struct mp_chmap_sel*,struct mp_chmap*) ;

void mp_chmap_sel_list(struct mp_chmap *c, struct mp_chmap *maps, int num_maps)
{


    struct mp_chmap_sel sel = {
        .chmaps = maps,
        .num_chmaps = num_maps,
    };
    mp_chmap_sel_fallback(&sel, c);
}
