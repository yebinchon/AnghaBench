
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int free_cnt; int (* free_fn ) (void*) ;int mpool; } ;
typedef TYPE_1__* HPDF_MMgr ;


 int HPDF_PTRACE (char*) ;
 int stub1 (void*) ;

void
HPDF_FreeMem (HPDF_MMgr mmgr,
               void *aptr)
{
    if (!aptr)
        return;

    if (!mmgr->mpool) {
        HPDF_PTRACE(("-%p mmgr-free-mem\n", aptr));
        mmgr->free_fn(aptr);




    }

    return;
}
