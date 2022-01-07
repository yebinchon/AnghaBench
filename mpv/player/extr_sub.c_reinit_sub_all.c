
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int ** current_track; } ;


 int NUM_PTRACKS ;
 size_t STREAM_SUB ;
 int reinit_sub (struct MPContext*,int ) ;

void reinit_sub_all(struct MPContext *mpctx)
{
    for (int n = 0; n < NUM_PTRACKS; n++)
        reinit_sub(mpctx, mpctx->current_track[n][STREAM_SUB]);
}
