
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_video {int fb_depth; } ;



void gl_video_set_fb_depth(struct gl_video *p, int fb_depth)
{
    p->fb_depth = fb_depth;
}
