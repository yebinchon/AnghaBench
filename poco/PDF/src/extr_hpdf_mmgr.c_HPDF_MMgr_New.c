
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {void* buf_size; scalar_t__ alloc_cnt; TYPE_1__* mpool; int (* free_fn ) (TYPE_2__*) ;scalar_t__ (* alloc_fn ) (void*) ;scalar_t__ free_cnt; int error; } ;
struct TYPE_8__ {int * next_node; scalar_t__ used_size; void* size; int * buf; } ;
typedef void* HPDF_UINT ;
typedef int HPDF_MPool_Node_Rec ;
typedef TYPE_1__* HPDF_MPool_Node ;
typedef int HPDF_MMgr_Rec ;
typedef TYPE_2__* HPDF_MMgr ;
typedef int (* HPDF_Free_Func ) (TYPE_2__*) ;
typedef int HPDF_Error ;
typedef int HPDF_BYTE ;
typedef scalar_t__ (* HPDF_Alloc_Func ) (int) ;


 int HPDF_FAILD_TO_ALLOC_MEM ;
 int HPDF_NOERROR ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;
 int InternalFreeMem (TYPE_2__*) ;
 scalar_t__ InternalGetMem (int) ;
 scalar_t__ stub1 (void*) ;
 int stub2 (TYPE_2__*) ;

HPDF_MMgr
HPDF_MMgr_New (HPDF_Error error,
                HPDF_UINT buf_size,
                HPDF_Alloc_Func alloc_fn,
                HPDF_Free_Func free_fn)
{
    HPDF_MMgr mmgr;

    HPDF_PTRACE((" HPDF_MMgr_New\n"));

    if (alloc_fn)
        mmgr = (HPDF_MMgr)alloc_fn (sizeof(HPDF_MMgr_Rec));
    else
        mmgr = (HPDF_MMgr)InternalGetMem (sizeof(HPDF_MMgr_Rec));

    HPDF_PTRACE(("+%p mmgr-new\n", mmgr));

    if (mmgr != ((void*)0)) {

        mmgr->error = error;
        if (alloc_fn && free_fn) {
            mmgr->alloc_fn = alloc_fn;
            mmgr->free_fn = free_fn;
        } else {
            mmgr->alloc_fn = InternalGetMem;
            mmgr->free_fn = InternalFreeMem;
        }






        if (!buf_size)
            mmgr->mpool = ((void*)0);
        else {
            HPDF_MPool_Node node;

            node = (HPDF_MPool_Node)mmgr->alloc_fn (sizeof(HPDF_MPool_Node_Rec) +
                    buf_size);

            HPDF_PTRACE(("+%p mmgr-node-new\n", node));

            if (node == ((void*)0)) {
                HPDF_SetError (error, HPDF_FAILD_TO_ALLOC_MEM, HPDF_NOERROR);

                mmgr->free_fn(mmgr);
                mmgr = ((void*)0);
            } else {
                mmgr->mpool = node;
                node->buf = (HPDF_BYTE *)node + sizeof(HPDF_MPool_Node_Rec);
                node->size = buf_size;
                node->used_size = 0;
                node->next_node = ((void*)0);
            }






        }

        if (mmgr) {
            mmgr->buf_size = buf_size;
        }
    } else
        HPDF_SetError(error, HPDF_FAILD_TO_ALLOC_MEM, HPDF_NOERROR);

    return mmgr;
}
