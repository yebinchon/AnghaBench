
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int dummy; } ;


 int M_INFO ;
 int SIGTERM ;
 int msg (int ,char*) ;
 int register_signal (struct context*,int ,char*) ;

void
check_inactivity_timeout_dowork(struct context *c)
{
    msg(M_INFO, "Inactivity timeout (--inactive), exiting");
    register_signal(c, SIGTERM, "inactive");
}
