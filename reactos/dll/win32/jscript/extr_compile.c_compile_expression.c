
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int unary_expression_t ;
typedef int property_value_expression_t ;
typedef int member_expression_t ;
struct TYPE_5__ {int literal; } ;
typedef TYPE_1__ literal_expression_t ;
struct TYPE_6__ {int identifier; } ;
typedef TYPE_2__ identifier_expression_t ;
typedef int function_expression_t ;
struct TYPE_7__ {int type; } ;
typedef TYPE_3__ expression_t ;
typedef int conditional_expression_t ;
typedef int compiler_ctx_t ;
typedef int call_expression_t ;
typedef int binary_expression_t ;
typedef int array_literal_expression_t ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 int DEFAULT_UNREACHABLE ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int OP_LAST ;
 int OP_add ;
 int OP_and ;
 int OP_array ;
 int OP_bneg ;
 int OP_cnd_nz ;
 int OP_cnd_z ;
 int OP_div ;
 int OP_eq ;
 int OP_eq2 ;
 int OP_gt ;
 int OP_gteq ;
 int OP_in ;
 int OP_instanceof ;
 int OP_lshift ;
 int OP_lt ;
 int OP_lteq ;
 int OP_minus ;
 int OP_mod ;
 int OP_mul ;
 int OP_neg ;
 int OP_neq ;
 int OP_neq2 ;
 int OP_or ;
 int OP_pop ;
 int OP_postinc ;
 int OP_preinc ;
 int OP_rshift ;
 int OP_rshift2 ;
 int OP_sub ;
 int OP_this ;
 int OP_tonum ;
 int OP_void ;
 int OP_xor ;
 int S_OK ;
 int compile_array_literal (int *,int *) ;
 int compile_assign_expression (int *,int *,int ) ;
 int compile_binary_expression (int *,int *,int ) ;
 int compile_call_expression (int *,int *,scalar_t__) ;
 int compile_comma_expression (int *,int *,scalar_t__) ;
 int compile_conditional_expression (int *,int *) ;
 int compile_delete_expression (int *,int *) ;
 int compile_function_expression (int *,int *,scalar_t__) ;
 int compile_increment_expression (int *,int *,int ,int) ;
 int compile_literal (int *,int ) ;
 int compile_logical_expression (int *,int *,int ) ;
 int compile_member_expression (int *,int *) ;
 int compile_new_expression (int *,int *) ;
 int compile_object_literal (int *,int *) ;
 int compile_typeof_expression (int *,int *) ;
 int compile_unary_expression (int *,int *,int ) ;
 int emit_identifier (int *,int ) ;
 int push_instr (int *,int ) ;
 int push_instr_uint (int *,int ,int) ;

__attribute__((used)) static HRESULT compile_expression(compiler_ctx_t *ctx, expression_t *expr, BOOL emit_ret)
{
    HRESULT hres;

    switch(expr->type) {
    case 185:
        hres = compile_binary_expression(ctx, (binary_expression_t*)expr, OP_add);
        break;
    case 184:
        hres = compile_logical_expression(ctx, (binary_expression_t*)expr, OP_cnd_z);
        break;
    case 183:
        hres = compile_binary_expression(ctx, (binary_expression_t*)expr, OP_array);
        break;
    case 182:
        hres = compile_array_literal(ctx, (array_literal_expression_t*)expr);
        break;
    case 181:
        hres = compile_assign_expression(ctx, (binary_expression_t*)expr, OP_LAST);
        break;
    case 180:
        hres = compile_assign_expression(ctx, (binary_expression_t*)expr, OP_add);
        break;
    case 179:
        hres = compile_assign_expression(ctx, (binary_expression_t*)expr, OP_and);
        break;
    case 171:
        hres = compile_assign_expression(ctx, (binary_expression_t*)expr, OP_sub);
        break;
    case 175:
        hres = compile_assign_expression(ctx, (binary_expression_t*)expr, OP_mul);
        break;
    case 178:
        hres = compile_assign_expression(ctx, (binary_expression_t*)expr, OP_div);
        break;
    case 176:
        hres = compile_assign_expression(ctx, (binary_expression_t*)expr, OP_mod);
        break;
    case 174:
        hres = compile_assign_expression(ctx, (binary_expression_t*)expr, OP_or);
        break;
    case 177:
        hres = compile_assign_expression(ctx, (binary_expression_t*)expr, OP_lshift);
        break;
    case 172:
        hres = compile_assign_expression(ctx, (binary_expression_t*)expr, OP_rshift);
        break;
    case 173:
        hres = compile_assign_expression(ctx, (binary_expression_t*)expr, OP_rshift2);
        break;
    case 170:
        hres = compile_assign_expression(ctx, (binary_expression_t*)expr, OP_xor);
        break;
    case 169:
        hres = compile_binary_expression(ctx, (binary_expression_t*)expr, OP_and);
        break;
    case 168:
        hres = compile_unary_expression(ctx, (unary_expression_t*)expr, OP_bneg);
        break;
    case 167:
        hres = compile_binary_expression(ctx, (binary_expression_t*)expr, OP_or);
        break;
    case 165:
        return compile_call_expression(ctx, (call_expression_t*)expr, emit_ret);
    case 164:
        return compile_comma_expression(ctx, (binary_expression_t*)expr, emit_ret);
    case 163:
        hres = compile_conditional_expression(ctx, (conditional_expression_t*)expr);
        break;
    case 162:
        hres = compile_delete_expression(ctx, (unary_expression_t*)expr);
        break;
    case 161:
        hres = compile_binary_expression(ctx, (binary_expression_t*)expr, OP_div);
        break;
    case 160:
        hres = compile_binary_expression(ctx, (binary_expression_t*)expr, OP_eq);
        break;
    case 159:
        hres = compile_binary_expression(ctx, (binary_expression_t*)expr, OP_eq2);
        break;
    case 158:
        return compile_function_expression(ctx, (function_expression_t*)expr, emit_ret);
    case 157:
        hres = compile_binary_expression(ctx, (binary_expression_t*)expr, OP_gt);
        break;
    case 156:
        hres = compile_binary_expression(ctx, (binary_expression_t*)expr, OP_gteq);
        break;
    case 155:
        hres = emit_identifier(ctx, ((identifier_expression_t*)expr)->identifier);
        break;
    case 154:
        hres = compile_binary_expression(ctx, (binary_expression_t*)expr, OP_in);
        break;
    case 153:
        hres = compile_binary_expression(ctx, (binary_expression_t*)expr, OP_instanceof);
        break;
    case 152:
        hres = compile_binary_expression(ctx, (binary_expression_t*)expr, OP_lt);
        break;
    case 151:
        hres = compile_binary_expression(ctx, (binary_expression_t*)expr, OP_lteq);
        break;
    case 150:
        hres = compile_literal(ctx, ((literal_expression_t*)expr)->literal);
        break;
    case 149:
        hres = compile_unary_expression(ctx, (unary_expression_t*)expr, OP_neg);
        break;
    case 148:
        hres = compile_binary_expression(ctx, (binary_expression_t*)expr, OP_lshift);
        break;
    case 147:
        hres = compile_member_expression(ctx, (member_expression_t*)expr);
        break;
    case 146:
        hres = compile_unary_expression(ctx, (unary_expression_t*)expr, OP_minus);
        break;
    case 145:
        hres = compile_binary_expression(ctx, (binary_expression_t*)expr, OP_mod);
        break;
    case 144:
        hres = compile_binary_expression(ctx, (binary_expression_t*)expr, OP_mul);
        break;
    case 143:
        hres = compile_new_expression(ctx, (call_expression_t*)expr);
        break;
    case 142:
        hres = compile_binary_expression(ctx, (binary_expression_t*)expr, OP_neq);
        break;
    case 141:
        hres = compile_binary_expression(ctx, (binary_expression_t*)expr, OP_neq2);
        break;
    case 140:
        hres = compile_logical_expression(ctx, (binary_expression_t*)expr, OP_cnd_nz);
        break;
    case 139:
        hres = compile_unary_expression(ctx, (unary_expression_t*)expr, OP_tonum);
        break;
    case 138:
        hres = compile_increment_expression(ctx, (unary_expression_t*)expr, OP_postinc, -1);
        break;
    case 137:
        hres = compile_increment_expression(ctx, (unary_expression_t*)expr, OP_postinc, 1);
        break;
    case 136:
        hres = compile_increment_expression(ctx, (unary_expression_t*)expr, OP_preinc, -1);
        break;
    case 135:
        hres = compile_increment_expression(ctx, (unary_expression_t*)expr, OP_preinc, 1);
        break;
    case 134:
        hres = compile_object_literal(ctx, (property_value_expression_t*)expr);
        break;
    case 132:
        hres = compile_binary_expression(ctx, (binary_expression_t*)expr, OP_rshift);
        break;
    case 133:
        hres = compile_binary_expression(ctx, (binary_expression_t*)expr, OP_rshift2);
        break;
    case 131:
        hres = compile_binary_expression(ctx, (binary_expression_t*)expr, OP_sub);
        break;
    case 130:
        return !emit_ret || push_instr(ctx, OP_this) ? S_OK : E_OUTOFMEMORY;
    case 129:
        hres = compile_typeof_expression(ctx, (unary_expression_t*)expr);
        break;
    case 128:
        hres = compile_unary_expression(ctx, (unary_expression_t*)expr, OP_void);
        break;
    case 166:
        hres = compile_binary_expression(ctx, (binary_expression_t*)expr, OP_xor);
        break;
    DEFAULT_UNREACHABLE;
    }

    if(FAILED(hres))
        return hres;

    return emit_ret ? S_OK : push_instr_uint(ctx, OP_pop, 1);
}
