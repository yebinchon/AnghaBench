
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int jsop_t ;
typedef int compiler_ctx_t ;
typedef int WCHAR ;
struct TYPE_5__ {TYPE_1__* arg; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
struct TYPE_4__ {int * bstr; } ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int * compiler_alloc_bstr (int *,int const*) ;
 TYPE_3__* instr_ptr (int *,unsigned int) ;
 unsigned int push_instr (int *,int ) ;

__attribute__((used)) static HRESULT push_instr_bstr(compiler_ctx_t *ctx, jsop_t op, const WCHAR *arg)
{
    unsigned instr;
    WCHAR *str;

    str = compiler_alloc_bstr(ctx, arg);
    if(!str)
        return E_OUTOFMEMORY;

    instr = push_instr(ctx, op);
    if(!instr)
        return E_OUTOFMEMORY;

    instr_ptr(ctx, instr)->u.arg->bstr = str;
    return S_OK;
}
