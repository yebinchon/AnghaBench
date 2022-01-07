
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;
struct mp_chmap_sel {int num_chmaps; scalar_t__ allow_any; scalar_t__ allow_waveext; int * speakers; int * chmaps; } ;
struct mp_chmap {int num; int speaker; } ;


 int MP_SPEAKER_ID_COUNT ;
 int MP_SPEAKER_ID_FC ;
 int mp_chmap_to_str (int *) ;
 char* mp_chmap_to_str_hr (struct mp_chmap*) ;
 int mp_msg (struct mp_log*,int,char*,...) ;
 int mp_msg_test (struct mp_log*,int) ;

void mp_chmal_sel_log(const struct mp_chmap_sel *s, struct mp_log *log, int lev)
{
    if (!mp_msg_test(log, lev))
        return;

    for (int i = 0; i < s->num_chmaps; i++)
        mp_msg(log, lev, " - %s\n", mp_chmap_to_str(&s->chmaps[i]));
    for (int i = 0; i < MP_SPEAKER_ID_COUNT; i++) {
        if (!s->speakers[i])
            continue;
        struct mp_chmap l = {.num = 1, .speaker = { i }};
        mp_msg(log, lev, " - #%s\n",
                    i == MP_SPEAKER_ID_FC ? "fc" : mp_chmap_to_str_hr(&l));
    }
    if (s->allow_waveext)
        mp_msg(log, lev, " - waveext\n");
    if (s->allow_any)
        mp_msg(log, lev, " - anything\n");
}
