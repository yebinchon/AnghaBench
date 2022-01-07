
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_switcher {int dummy; } ;
typedef int event ;


 unsigned char EVT_INTERRUPT ;
 int * vt_switcher_pipe ;
 int write (int ,unsigned char*,int) ;

void vt_switcher_interrupt_poll(struct vt_switcher *s)
{
    unsigned char event = EVT_INTERRUPT;
    (void)write(vt_switcher_pipe[1], &event, sizeof(event));
}
