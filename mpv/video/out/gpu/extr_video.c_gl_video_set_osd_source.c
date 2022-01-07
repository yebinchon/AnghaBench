
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {int dummy; } ;
struct gl_video {struct osd_state* osd_state; int * osd; } ;


 int mpgl_osd_destroy (int *) ;
 int reinit_osd (struct gl_video*) ;

void gl_video_set_osd_source(struct gl_video *p, struct osd_state *osd)
{
    mpgl_osd_destroy(p->osd);
    p->osd = ((void*)0);
    p->osd_state = osd;
    reinit_osd(p);
}
