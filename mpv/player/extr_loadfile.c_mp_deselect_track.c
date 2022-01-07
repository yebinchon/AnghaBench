
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct track {int type; scalar_t__ selected; } ;
struct MPContext {int dummy; } ;


 int NUM_PTRACKS ;
 int mp_switch_track_n (struct MPContext*,int,int ,int *,int ) ;

void mp_deselect_track(struct MPContext *mpctx, struct track *track)
{
    if (track && track->selected) {
        for (int t = 0; t < NUM_PTRACKS; t++)
            mp_switch_track_n(mpctx, t, track->type, ((void*)0), 0);
    }
}
