
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {int keepalive_ping; int keepalive_timeout; int ping_send_timeout; int ping_rec_timeout; scalar_t__ mode; int gc; void* ping_rec_timeout_action; } ;


 int ASSERT (int ) ;
 scalar_t__ MODE_POINT_TO_POINT ;
 scalar_t__ MODE_SERVER ;
 int M_USAGE ;
 void* PING_RESTART ;
 int msg (int ,char*,...) ;
 int print_str_int (char*,int,int *) ;
 int push_option (struct options*,int ,int ) ;

void
helper_keepalive(struct options *o)
{
    if (o->keepalive_ping || o->keepalive_timeout)
    {



        if (o->keepalive_ping <= 0 || o->keepalive_timeout <= 0)
        {
            msg(M_USAGE, "--keepalive parameters must be > 0");
        }
        if (o->keepalive_ping * 2 > o->keepalive_timeout)
        {
            msg(M_USAGE, "the second parameter to --keepalive (restart timeout=%d) must be at least twice the value of the first parameter (ping interval=%d).  A ratio of 1:5 or 1:6 would be even better.  Recommended setting is --keepalive 10 60.",
                o->keepalive_timeout,
                o->keepalive_ping);
        }
        if (o->ping_send_timeout || o->ping_rec_timeout)
        {
            msg(M_USAGE, "--keepalive conflicts with --ping, --ping-exit, or --ping-restart.  If you use --keepalive, you don't need any of the other --ping directives.");
        }




        if (o->mode == MODE_POINT_TO_POINT)
        {
            o->ping_rec_timeout_action = PING_RESTART;
            o->ping_send_timeout = o->keepalive_ping;
            o->ping_rec_timeout = o->keepalive_timeout;
        }
        else
        {
            ASSERT(0);
        }
    }
}
