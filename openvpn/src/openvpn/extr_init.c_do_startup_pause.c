
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int first_time; } ;


 int do_hold (int ) ;
 int socket_restart_pause (struct context*) ;

__attribute__((used)) static void
do_startup_pause(struct context *c)
{
    if (!c->first_time)
    {
        socket_restart_pause(c);
    }
    else
    {
        do_hold(0);
    }
}
