
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ao {TYPE_1__* driver; int stream_silence; } ;
struct TYPE_2__ {int (* reset ) (struct ao*) ;} ;


 int AO_STATE_NONE ;
 int set_state (struct ao*,int ) ;
 int stub1 (struct ao*) ;

__attribute__((used)) static void pause(struct ao *ao)
{
    if (!ao->stream_silence && ao->driver->reset)
        ao->driver->reset(ao);
    set_state(ao, AO_STATE_NONE);
}
