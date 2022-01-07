
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int compiler_ctx_t ;
struct TYPE_9__ {unsigned int length; TYPE_4__* element_list; } ;
typedef TYPE_3__ array_literal_expression_t ;
struct TYPE_10__ {int expr; scalar_t__ elision; struct TYPE_10__* next; } ;
typedef TYPE_4__ array_element_t ;
struct TYPE_8__ {TYPE_1__* arg; } ;
struct TYPE_11__ {TYPE_2__ u; } ;
struct TYPE_7__ {unsigned int uint; } ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int OP_carray ;
 int OP_carray_set ;
 int S_OK ;
 int TRUE ;
 int compile_expression (int *,int ,int ) ;
 TYPE_5__* instr_ptr (int *,unsigned int) ;
 unsigned int push_instr (int *,int ) ;
 int push_instr_uint (int *,int ,unsigned int) ;

__attribute__((used)) static HRESULT compile_array_literal(compiler_ctx_t *ctx, array_literal_expression_t *expr)
{
    unsigned length = 0;
    array_element_t *iter;
    unsigned array_instr;
    HRESULT hres;

    array_instr = push_instr(ctx, OP_carray);

    for(iter = expr->element_list; iter; iter = iter->next) {
        length += iter->elision;

        hres = compile_expression(ctx, iter->expr, TRUE);
        if(FAILED(hres))
            return hres;

        hres = push_instr_uint(ctx, OP_carray_set, length);
        if(FAILED(hres))
            return hres;

        length++;
    }

    instr_ptr(ctx, array_instr)->u.arg[0].uint = length + expr->length;
    return S_OK;
}
