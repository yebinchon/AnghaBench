
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_chmap_sel {scalar_t__ num_chmaps; struct mp_chmap* chmaps; int tmp; struct mp_chmap* chmaps_storage; } ;
struct mp_chmap {int dummy; } ;


 scalar_t__ MP_ARRAY_SIZE (struct mp_chmap*) ;
 int MP_TARRAY_GROW (int ,struct mp_chmap*,scalar_t__) ;
 int mp_chmap_is_valid (struct mp_chmap const*) ;
 struct mp_chmap* talloc_memdup (int ,struct mp_chmap*,int) ;

void mp_chmap_sel_add_map(struct mp_chmap_sel *s, const struct mp_chmap *map)
{
    if (!mp_chmap_is_valid(map))
        return;
    if (!s->chmaps)
        s->chmaps = s->chmaps_storage;
    if (s->num_chmaps == MP_ARRAY_SIZE(s->chmaps_storage)) {
        if (!s->tmp)
            return;
        s->chmaps = talloc_memdup(s->tmp, s->chmaps, sizeof(s->chmaps_storage));
    }
    if (s->chmaps != s->chmaps_storage)
        MP_TARRAY_GROW(s->tmp, s->chmaps, s->num_chmaps);
    s->chmaps[s->num_chmaps++] = *map;
}
