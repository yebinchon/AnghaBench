
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int num_next_frames; int * next_frames; } ;


 int talloc_free (int ) ;

__attribute__((used)) static void shift_frames(struct MPContext *mpctx)
{
    if (mpctx->num_next_frames < 1)
        return;
    talloc_free(mpctx->next_frames[0]);
    for (int n = 0; n < mpctx->num_next_frames - 1; n++)
        mpctx->next_frames[n] = mpctx->next_frames[n + 1];
    mpctx->num_next_frames -= 1;
}
