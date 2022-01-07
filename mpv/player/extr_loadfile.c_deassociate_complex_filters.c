
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct MPContext {int num_tracks; int lavfi_graph; int lavfi; TYPE_1__* ao_chain; TYPE_3__* vo_chain; TYPE_2__** tracks; } ;
struct TYPE_6__ {int * filter_src; } ;
struct TYPE_5__ {int * sink; } ;
struct TYPE_4__ {int * filter_src; } ;


 int TA_FREEP (int *) ;

__attribute__((used)) static void deassociate_complex_filters(struct MPContext *mpctx)
{
    for (int n = 0; n < mpctx->num_tracks; n++)
        mpctx->tracks[n]->sink = ((void*)0);
    if (mpctx->vo_chain)
        mpctx->vo_chain->filter_src = ((void*)0);
    if (mpctx->ao_chain)
        mpctx->ao_chain->filter_src = ((void*)0);
    TA_FREEP(&mpctx->lavfi);
    TA_FREEP(&mpctx->lavfi_graph);
}
