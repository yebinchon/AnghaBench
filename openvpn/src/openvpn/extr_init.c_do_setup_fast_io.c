
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int fast_io; } ;
struct TYPE_4__ {int proto; } ;
struct TYPE_5__ {scalar_t__ shaper; TYPE_1__ ce; scalar_t__ fast_io; } ;
struct context {TYPE_3__ c2; TYPE_2__ options; } ;


 int M_INFO ;
 int msg (int ,char*) ;
 int proto_is_udp (int ) ;

__attribute__((used)) static void
do_setup_fast_io(struct context *c)
{
    if (c->options.fast_io)
    {



        if (!proto_is_udp(c->options.ce.proto))
        {
            msg(M_INFO, "NOTE: --fast-io is disabled since we are not using UDP");
        }
        else
        {







            {
                c->c2.fast_io = 1;
            }
        }

    }
}
