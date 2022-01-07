
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int jsstr_t ;
typedef int jsop_t ;
typedef int compiler_ctx_t ;
struct TYPE_5__ {TYPE_1__* arg; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
struct TYPE_4__ {unsigned int uint; int * str; } ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 TYPE_3__* instr_ptr (int *,unsigned int) ;
 unsigned int push_instr (int *,int ) ;

__attribute__((used)) static HRESULT push_instr_str_uint(compiler_ctx_t *ctx, jsop_t op, jsstr_t *str, unsigned arg2)
{
    unsigned instr;

    instr = push_instr(ctx, op);
    if(!instr)
        return E_OUTOFMEMORY;

    instr_ptr(ctx, instr)->u.arg[0].str = str;
    instr_ptr(ctx, instr)->u.arg[1].uint = arg2;
    return S_OK;
}
