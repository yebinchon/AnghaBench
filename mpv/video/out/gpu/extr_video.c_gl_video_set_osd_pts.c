
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_video {double osd_pts; } ;



void gl_video_set_osd_pts(struct gl_video *p, double pts)
{
    p->osd_pts = pts;
}
