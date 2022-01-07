
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_chmap_sel {int member_0; } ;
struct ao {int channels; } ;
typedef int pa_channel_map ;


 scalar_t__ ao_chmap_sel_adjust (struct ao*,struct mp_chmap_sel*,int *) ;
 scalar_t__ chmap_pa_from_mp (int *,int *) ;
 int mp_chmap_sel_add_speaker (struct mp_chmap_sel*,int) ;
 int** speaker_map ;

__attribute__((used)) static bool select_chmap(struct ao *ao, pa_channel_map *dst)
{
    struct mp_chmap_sel sel = {0};
    for (int n = 0; speaker_map[n][1] != -1; n++)
        mp_chmap_sel_add_speaker(&sel, speaker_map[n][1]);
    return ao_chmap_sel_adjust(ao, &sel, &ao->channels) &&
           chmap_pa_from_mp(dst, &ao->channels);
}
