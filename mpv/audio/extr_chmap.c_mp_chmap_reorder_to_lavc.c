
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mp_chmap {int dummy; } ;


 int mp_chmap_from_lavc (struct mp_chmap*,int ) ;
 int mp_chmap_is_valid (struct mp_chmap*) ;
 int mp_chmap_to_lavc_unchecked (struct mp_chmap*) ;

void mp_chmap_reorder_to_lavc(struct mp_chmap *map)
{
    if (!mp_chmap_is_valid(map))
        return;
    uint64_t mask = mp_chmap_to_lavc_unchecked(map);
    mp_chmap_from_lavc(map, mask);
}
