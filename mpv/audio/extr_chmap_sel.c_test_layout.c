
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_chmap_sel {scalar_t__ allow_any; } ;
struct mp_chmap {int dummy; } ;


 int mp_chmap_is_valid (struct mp_chmap*) ;
 scalar_t__ test_maps (struct mp_chmap_sel const*,struct mp_chmap*) ;
 scalar_t__ test_speakers (struct mp_chmap_sel const*,struct mp_chmap*) ;
 scalar_t__ test_waveext (struct mp_chmap_sel const*,struct mp_chmap*) ;

__attribute__((used)) static bool test_layout(const struct mp_chmap_sel *s, struct mp_chmap *map)
{
    if (!mp_chmap_is_valid(map))
        return 0;

    return s->allow_any || test_waveext(s, map) || test_speakers(s, map) ||
           test_maps(s, map);
}
