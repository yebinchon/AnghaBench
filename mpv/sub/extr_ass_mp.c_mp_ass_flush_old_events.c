
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int n_events; TYPE_1__* events; } ;
struct TYPE_5__ {long long Start; long long Duration; } ;
typedef TYPE_2__ ASS_Track ;


 int ass_free_event (TYPE_2__*,int) ;

void mp_ass_flush_old_events(ASS_Track *track, long long ts)
{
    int n = 0;
    for (; n < track->n_events; n++) {
        if ((track->events[n].Start + track->events[n].Duration) >= ts)
            break;
        ass_free_event(track, n);
        track->n_events--;
    }
    for (int i = 0; n > 0 && i < track->n_events; i++) {
        track->events[i] = track->events[i+n];
    }
}
