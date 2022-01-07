
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int num_tracks; int * recorder; int * tracks; } ;


 int mp_recorder_destroy (int *) ;
 int set_track_recorder_sink (int ,int *) ;

void close_recorder(struct MPContext *mpctx)
{
    if (!mpctx->recorder)
        return;

    for (int n = 0; n < mpctx->num_tracks; n++)
        set_track_recorder_sink(mpctx->tracks[n], ((void*)0));

    mp_recorder_destroy(mpctx->recorder);
    mpctx->recorder = ((void*)0);
}
