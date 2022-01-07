
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int num_tracks; int * tracks; } ;


 int uninit_sub (struct MPContext*,int ) ;

void uninit_sub_all(struct MPContext *mpctx)
{
    for (int n = 0; n < mpctx->num_tracks; n++)
        uninit_sub(mpctx, mpctx->tracks[n]);
}
