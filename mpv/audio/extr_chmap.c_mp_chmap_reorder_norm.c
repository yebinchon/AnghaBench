
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mp_chmap {int num; int * speaker; } ;


 int comp_uint8 ;
 int qsort (int *,int ,int,int ) ;

void mp_chmap_reorder_norm(struct mp_chmap *map)
{
    uint8_t *arr = &map->speaker[0];
    qsort(arr, map->num, 1, comp_uint8);
}
