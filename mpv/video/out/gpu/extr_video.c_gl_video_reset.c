
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_video {int dummy; } ;


 int gl_video_reset_surfaces (struct gl_video*) ;

void gl_video_reset(struct gl_video *p)
{
    gl_video_reset_surfaces(p);
}
