
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int obs_source_t ;
struct TYPE_3__ {int video_time; } ;
struct TYPE_4__ {TYPE_1__ video; } ;


 float calc_time (int *,int ) ;
 TYPE_2__* obs ;

__attribute__((used)) static inline float get_video_time(obs_source_t *transition)
{
 uint64_t ts = obs->video.video_time;
 return calc_time(transition, ts);
}
