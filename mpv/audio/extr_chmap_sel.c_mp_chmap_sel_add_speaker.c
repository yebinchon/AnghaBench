
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_chmap_sel {int* speakers; } ;


 int MP_SPEAKER_ID_COUNT ;
 int assert (int) ;

void mp_chmap_sel_add_speaker(struct mp_chmap_sel *s, int id)
{
    assert(id >= 0 && id < MP_SPEAKER_ID_COUNT);
    s->speakers[id] = 1;
}
