
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_video {scalar_t__ osd_state; int log; int ra; int * osd; } ;


 int mpgl_osd_destroy (int *) ;
 int * mpgl_osd_init (int ,int ,scalar_t__) ;

__attribute__((used)) static void reinit_osd(struct gl_video *p)
{
    mpgl_osd_destroy(p->osd);
    p->osd = ((void*)0);
    if (p->osd_state)
        p->osd = mpgl_osd_init(p->ra, p->log, p->osd_state);
}
