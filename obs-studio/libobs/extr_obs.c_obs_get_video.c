
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int video_t ;
struct TYPE_3__ {int * video; } ;
struct TYPE_4__ {TYPE_1__ video; } ;


 TYPE_2__* obs ;

video_t *obs_get_video(void)
{
 return (obs != ((void*)0)) ? obs->video.video : ((void*)0);
}
