
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ free_cnt; scalar_t__ alloc_cnt; int (* free_fn ) (TYPE_1__*) ;struct TYPE_6__* next_node; struct TYPE_6__* mpool; } ;
typedef TYPE_1__* HPDF_MPool_Node ;
typedef TYPE_1__* HPDF_MMgr ;


 int HPDF_PRINTF (char*,...) ;
 int HPDF_PTRACE (char*) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;

void
HPDF_MMgr_Free (HPDF_MMgr mmgr)
{
    HPDF_MPool_Node node;

    HPDF_PTRACE((" HPDF_MMgr_Free\n"));

    if (mmgr == ((void*)0))
        return;

    node = mmgr->mpool;


    while (node != ((void*)0)) {
        HPDF_MPool_Node tmp = node;
        node = tmp->next_node;

        HPDF_PTRACE(("-%p mmgr-node-free\n", tmp));
        mmgr->free_fn (tmp);





    }
    HPDF_PTRACE(("-%p mmgr-free\n", mmgr));
    mmgr->free_fn (mmgr);
}
