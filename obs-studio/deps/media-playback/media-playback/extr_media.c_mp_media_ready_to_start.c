
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int frame_ready; int eof; } ;
struct TYPE_5__ {int frame_ready; int eof; } ;
struct TYPE_7__ {TYPE_2__ v; scalar_t__ has_video; TYPE_1__ a; scalar_t__ has_audio; } ;
typedef TYPE_3__ mp_media_t ;



__attribute__((used)) static inline bool mp_media_ready_to_start(mp_media_t *m)
{
 if (m->has_audio && !m->a.eof && !m->a.frame_ready)
  return 0;
 if (m->has_video && !m->v.eof && !m->v.frame_ready)
  return 0;
 return 1;
}
