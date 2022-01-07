
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ao {TYPE_1__* driver; int stream_silence; } ;
struct TYPE_2__ {int (* resume ) (struct ao*) ;} ;


 int AO_STATE_PLAY ;
 int set_state (struct ao*,int ) ;
 int stub1 (struct ao*) ;

__attribute__((used)) static void resume(struct ao *ao)
{
    set_state(ao, AO_STATE_PLAY);
    if (!ao->stream_silence)
        ao->driver->resume(ao);
}
