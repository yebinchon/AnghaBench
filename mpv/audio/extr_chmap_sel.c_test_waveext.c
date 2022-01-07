
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_chmap_sel {scalar_t__ allow_waveext; } ;
struct mp_chmap {int dummy; } ;


 scalar_t__ mp_chmap_is_waveext (struct mp_chmap*) ;
 int mp_chmap_reorder_to_waveext (struct mp_chmap*) ;

__attribute__((used)) static bool test_waveext(const struct mp_chmap_sel *s, struct mp_chmap *map)
{
    if (s->allow_waveext) {
        struct mp_chmap t = *map;
        mp_chmap_reorder_to_waveext(&t);
        if (mp_chmap_is_waveext(&t)) {
            *map = t;
            return 1;
        }
    }
    return 0;
}
