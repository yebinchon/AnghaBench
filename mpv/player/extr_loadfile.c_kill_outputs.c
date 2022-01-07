
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct track {scalar_t__ ao_c; scalar_t__ vo_c; int type; int user_tid; } ;
struct MPContext {int dummy; } ;


 int MP_VERBOSE (struct MPContext*,char*,int ) ;
 int assert (int) ;
 int mp_switch_track (struct MPContext*,int ,int *,int ) ;

__attribute__((used)) static void kill_outputs(struct MPContext *mpctx, struct track *track)
{
    if (track->vo_c || track->ao_c) {
        MP_VERBOSE(mpctx, "deselecting track %d for lavfi-complex option\n",
                   track->user_tid);
        mp_switch_track(mpctx, track->type, ((void*)0), 0);
    }
    assert(!(track->vo_c || track->ao_c));
}
