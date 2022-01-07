
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; int str; } ;
struct TYPE_5__ {TYPE_2__ regexp; int str; int dval; int bval; } ;
struct TYPE_7__ {int type; TYPE_1__ u; } ;
typedef TYPE_3__ literal_t ;
typedef int compiler_ctx_t ;
typedef int HRESULT ;


 int DEFAULT_UNREACHABLE ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;





 int OP_bool ;
 int OP_double ;
 int OP_null ;
 int OP_regexp ;
 int OP_str ;
 int S_OK ;
 int push_instr (int *,int ) ;
 int push_instr_double (int *,int ,int ) ;
 int push_instr_int (int *,int ,int ) ;
 int push_instr_str (int *,int ,int ) ;
 int push_instr_str_uint (int *,int ,int ,int ) ;

__attribute__((used)) static HRESULT compile_literal(compiler_ctx_t *ctx, literal_t *literal)
{
    switch(literal->type) {
    case 132:
        return push_instr_int(ctx, OP_bool, literal->u.bval);
    case 131:
        return push_instr_double(ctx, OP_double, literal->u.dval);
    case 130:
        return push_instr(ctx, OP_null) ? S_OK : E_OUTOFMEMORY;
    case 128:
        return push_instr_str(ctx, OP_str, literal->u.str);
    case 129:
        return push_instr_str_uint(ctx, OP_regexp, literal->u.regexp.str, literal->u.regexp.flags);
    DEFAULT_UNREACHABLE;
    }
    return E_FAIL;
}
