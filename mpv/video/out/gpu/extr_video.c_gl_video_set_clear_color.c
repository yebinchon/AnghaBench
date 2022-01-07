
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_color {int dummy; } ;
struct gl_video {int force_clear_color; struct m_color clear_color; } ;



void gl_video_set_clear_color(struct gl_video *p, struct m_color c)
{
    p->force_clear_color = 1;
    p->clear_color = c;
}
