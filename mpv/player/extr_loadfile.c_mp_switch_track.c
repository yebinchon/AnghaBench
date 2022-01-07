
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct track {int dummy; } ;
struct MPContext {int dummy; } ;
typedef enum stream_type { ____Placeholder_stream_type } stream_type ;


 int mp_switch_track_n (struct MPContext*,int ,int,struct track*,int) ;

void mp_switch_track(struct MPContext *mpctx, enum stream_type type,
                     struct track *track, int flags)
{
    mp_switch_track_n(mpctx, 0, type, track, flags);
}
