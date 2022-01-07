
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct demux_internal {TYPE_1__* d_user; } ;
struct demux_free_async_state {int dummy; } ;
struct TYPE_2__ {int cancel; } ;


 int mp_cancel_trigger (int ) ;

void demux_free_async_force(struct demux_free_async_state *state)
{
    struct demux_internal *in = (struct demux_internal *)state;

    mp_cancel_trigger(in->d_user->cancel);
}
