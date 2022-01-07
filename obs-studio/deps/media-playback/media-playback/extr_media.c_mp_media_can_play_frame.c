
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mp_decode {scalar_t__ frame_pts; scalar_t__ frame_ready; } ;
struct TYPE_3__ {scalar_t__ next_pts_ns; } ;
typedef TYPE_1__ mp_media_t ;



__attribute__((used)) static inline bool mp_media_can_play_frame(mp_media_t *m, struct mp_decode *d)
{
 return d->frame_ready && d->frame_pts <= m->next_pts_ns;
}
