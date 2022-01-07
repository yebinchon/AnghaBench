
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int event ;


 unsigned char EVT_ACQUIRE ;
 unsigned char EVT_RELEASE ;
 int RELEASE_SIGNAL ;
 int * vt_switcher_pipe ;
 int write (int ,unsigned char*,int) ;

__attribute__((used)) static void vt_switcher_sighandler(int sig)
{
    unsigned char event = sig == RELEASE_SIGNAL ? EVT_RELEASE : EVT_ACQUIRE;
    (void)write(vt_switcher_pipe[1], &event, sizeof(event));
}
