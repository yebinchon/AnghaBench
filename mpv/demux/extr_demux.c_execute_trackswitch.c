
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct demux_internal {int tracks_switched; int num_streams; int lock; TYPE_4__* d_thread; TYPE_2__** streams; } ;
struct TYPE_8__ {TYPE_3__* desc; } ;
struct TYPE_7__ {int (* switched_tracks ) (TYPE_4__*) ;} ;
struct TYPE_6__ {TYPE_1__* ds; } ;
struct TYPE_5__ {int selected; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (TYPE_4__*) ;

__attribute__((used)) static void execute_trackswitch(struct demux_internal *in)
{
    in->tracks_switched = 0;

    bool any_selected = 0;
    for (int n = 0; n < in->num_streams; n++)
        any_selected |= in->streams[n]->ds->selected;

    pthread_mutex_unlock(&in->lock);

    if (in->d_thread->desc->switched_tracks)
        in->d_thread->desc->switched_tracks(in->d_thread);

    pthread_mutex_lock(&in->lock);
}
