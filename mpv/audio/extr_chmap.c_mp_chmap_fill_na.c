
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_chmap {int num; int * speaker; } ;


 int MP_NUM_CHANNELS ;
 int MP_SPEAKER_ID_NA ;
 int assert (int) ;

void mp_chmap_fill_na(struct mp_chmap *map, int num)
{
    assert(num <= MP_NUM_CHANNELS);
    while (map->num < num)
        map->speaker[map->num++] = MP_SPEAKER_ID_NA;
}
