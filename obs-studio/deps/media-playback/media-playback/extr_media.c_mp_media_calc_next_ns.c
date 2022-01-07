
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int next_pts_ns; int next_ns; } ;
typedef TYPE_1__ mp_media_t ;
typedef int int64_t ;


 int assert (int) ;
 int mp_media_get_next_min_pts (TYPE_1__*) ;

__attribute__((used)) static void mp_media_calc_next_ns(mp_media_t *m)
{
 int64_t min_next_ns = mp_media_get_next_min_pts(m);

 int64_t delta = min_next_ns - m->next_pts_ns;



 if (delta < 0)
  delta = 0;
 if (delta > 3000000000)
  delta = 0;

 m->next_ns += delta;
 m->next_pts_ns = min_next_ns;
}
