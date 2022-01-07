
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int bstr_cnt; unsigned int str_cnt; struct TYPE_6__* instrs; struct TYPE_6__* str_pool; struct TYPE_6__* bstr_pool; int heap; struct TYPE_6__* source; scalar_t__ ref; } ;
typedef TYPE_1__ bytecode_t ;


 int SysFreeString (TYPE_1__) ;
 int heap_free (TYPE_1__*) ;
 int heap_pool_free (int *) ;
 int jsstr_release (TYPE_1__) ;

void release_bytecode(bytecode_t *code)
{
    unsigned i;

    if(--code->ref)
        return;

    for(i=0; i < code->bstr_cnt; i++)
        SysFreeString(code->bstr_pool[i]);
    for(i=0; i < code->str_cnt; i++)
        jsstr_release(code->str_pool[i]);

    heap_free(code->source);
    heap_pool_free(&code->heap);
    heap_free(code->bstr_pool);
    heap_free(code->str_pool);
    heap_free(code->instrs);
    heap_free(code);
}
