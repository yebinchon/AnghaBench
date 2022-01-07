
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int instr_t ;
struct TYPE_5__ {int code_size; int code_off; TYPE_2__* code; } ;
typedef TYPE_1__ compiler_ctx_t ;
typedef int bytecode_t ;
typedef int WCHAR ;
struct TYPE_6__ {int ref; int instrs; int source; int heap; } ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int heap_alloc (int) ;
 TYPE_2__* heap_alloc_zero (int) ;
 int heap_pool_init (int *) ;
 int heap_strdupW (int const*) ;
 int release_bytecode (TYPE_2__*) ;

__attribute__((used)) static HRESULT init_code(compiler_ctx_t *compiler, const WCHAR *source)
{
    compiler->code = heap_alloc_zero(sizeof(bytecode_t));
    if(!compiler->code)
        return E_OUTOFMEMORY;

    compiler->code->ref = 1;
    heap_pool_init(&compiler->code->heap);

    compiler->code->source = heap_strdupW(source);
    if(!compiler->code->source) {
        release_bytecode(compiler->code);
        return E_OUTOFMEMORY;
    }

    compiler->code->instrs = heap_alloc(64 * sizeof(instr_t));
    if(!compiler->code->instrs) {
        release_bytecode(compiler->code);
        return E_OUTOFMEMORY;
    }

    compiler->code_size = 64;
    compiler->code_off = 1;
    return S_OK;
}
