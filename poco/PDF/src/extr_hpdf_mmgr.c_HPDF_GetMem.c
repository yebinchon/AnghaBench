
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int buf_size; int alloc_cnt; int error; void* (* alloc_fn ) (int) ;TYPE_1__* mpool; } ;
struct TYPE_4__ {int size; int used_size; int * buf; struct TYPE_4__* next_node; } ;
typedef int HPDF_UINT ;
typedef int HPDF_MPool_Node_Rec ;
typedef TYPE_1__* HPDF_MPool_Node ;
typedef TYPE_2__* HPDF_MMgr ;
typedef int HPDF_BYTE ;


 int HPDF_ALINMENT_SIZ ;
 int HPDF_FAILD_TO_ALLOC_MEM ;
 int HPDF_NOERROR ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;
 void* stub1 (int) ;
 void* stub2 (int) ;

void*
HPDF_GetMem (HPDF_MMgr mmgr,
              HPDF_UINT size)
{
    void * ptr;

    if (mmgr->mpool) {
        HPDF_MPool_Node node = mmgr->mpool;






        if (node->size - node->used_size >= size) {
            ptr = (HPDF_BYTE*)node->buf + node->used_size;
            node->used_size += size;
            return ptr;
        } else {
            HPDF_UINT tmp_buf_siz = (mmgr->buf_size < size) ? size :
                mmgr->buf_size;

            node = (HPDF_MPool_Node)mmgr->alloc_fn (sizeof(HPDF_MPool_Node_Rec)
                    + tmp_buf_siz);
            HPDF_PTRACE(("+%p mmgr-new-node\n", node));

            if (!node) {
                HPDF_SetError (mmgr->error, HPDF_FAILD_TO_ALLOC_MEM,
                        HPDF_NOERROR);
                return ((void*)0);
            }

            node->size = tmp_buf_siz;
        }

        node->next_node = mmgr->mpool;
        mmgr->mpool = node;
        node->used_size = size;
        node->buf = (HPDF_BYTE*)node + sizeof(HPDF_MPool_Node_Rec);
        ptr = node->buf;
    } else {
        ptr = mmgr->alloc_fn (size);
        HPDF_PTRACE(("+%p mmgr-alloc_fn size=%u\n", ptr, size));

        if (ptr == ((void*)0))
            HPDF_SetError (mmgr->error, HPDF_FAILD_TO_ALLOC_MEM, HPDF_NOERROR);
    }






    return ptr;
}
