
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_chmap {int num; int* speaker; int member_0; } ;


 int MP_SPEAKER_ID_NA ;

void mp_chmap_remove_na(struct mp_chmap *map)
{
    struct mp_chmap new = {0};
    for (int n = 0; n < map->num; n++) {
        int sp = map->speaker[n];
        if (sp != MP_SPEAKER_ID_NA)
            new.speaker[new.num++] = map->speaker[n];
    }
    *map = new;
}
