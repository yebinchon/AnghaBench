
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_15__ {TYPE_5__* expression; } ;
typedef TYPE_1__ unary_expression_t ;
struct TYPE_16__ {TYPE_3__* property_list; } ;
typedef TYPE_2__ property_value_expression_t ;
struct TYPE_17__ {TYPE_5__* value; struct TYPE_17__* next; } ;
typedef TYPE_3__ property_definition_t ;
struct TYPE_18__ {TYPE_5__* expression; } ;
typedef TYPE_4__ member_expression_t ;
typedef int function_expression_t ;
struct TYPE_19__ {int type; } ;
typedef TYPE_5__ expression_t ;
struct TYPE_20__ {TYPE_5__* false_expression; TYPE_5__* true_expression; TYPE_5__* expression; } ;
typedef TYPE_6__ conditional_expression_t ;
typedef int compiler_ctx_t ;
struct TYPE_21__ {TYPE_11__* argument_list; TYPE_5__* expression; } ;
typedef TYPE_7__ call_expression_t ;
struct TYPE_22__ {TYPE_5__* expression2; TYPE_5__* expression1; } ;
typedef TYPE_8__ binary_expression_t ;
struct TYPE_23__ {TYPE_10__* element_list; } ;
typedef TYPE_9__ array_literal_expression_t ;
struct TYPE_13__ {TYPE_5__* expr; struct TYPE_13__* next; } ;
typedef TYPE_10__ array_element_t ;
struct TYPE_14__ {TYPE_5__* expr; struct TYPE_14__* next; } ;
typedef TYPE_11__ argument_t ;
typedef int HRESULT ;


 int DEFAULT_UNREACHABLE ;
 int FAILED (int ) ;
 int S_OK ;
 int visit_function_expression (int *,int *) ;

__attribute__((used)) static HRESULT visit_expression(compiler_ctx_t *ctx, expression_t *expr)
{
    HRESULT hres = S_OK;

    switch(expr->type) {
    case 185:
    case 184:
    case 183:
    case 181:
    case 180:
    case 179:
    case 171:
    case 175:
    case 178:
    case 176:
    case 174:
    case 177:
    case 172:
    case 173:
    case 170:
    case 169:
    case 167:
    case 164:
    case 161:
    case 160:
    case 159:
    case 157:
    case 156:
    case 154:
    case 153:
    case 152:
    case 151:
    case 148:
    case 145:
    case 144:
    case 142:
    case 141:
    case 140:
    case 132:
    case 133:
    case 131:
    case 166: {
        binary_expression_t *binary_expr = (binary_expression_t*)expr;

        hres = visit_expression(ctx, binary_expr->expression1);
        if(FAILED(hres))
            return hres;

        hres = visit_expression(ctx, binary_expr->expression2);
        break;
    }
    case 168:
    case 162:
    case 149:
    case 146:
    case 139:
    case 138:
    case 137:
    case 136:
    case 135:
    case 129:
    case 128:
        hres = visit_expression(ctx, ((unary_expression_t*)expr)->expression);
        break;
    case 155:
    case 150:
    case 130:
        break;
    case 182: {
        array_literal_expression_t *array_expr = (array_literal_expression_t*)expr;
        array_element_t *iter;

        for(iter = array_expr->element_list; iter; iter = iter->next) {
            hres = visit_expression(ctx, iter->expr);
            if(FAILED(hres))
                return hres;
        }
        break;
    }
    case 165:
    case 143: {
        call_expression_t *call_expr = (call_expression_t*)expr;
        argument_t *arg;

        hres = visit_expression(ctx, call_expr->expression);
        if(FAILED(hres))
            return hres;

        for(arg = call_expr->argument_list; arg; arg = arg->next) {
            hres = visit_expression(ctx, arg->expr);
            if(FAILED(hres))
                return hres;
        }
        break;
    }
    case 163: {
        conditional_expression_t *cond_expr = (conditional_expression_t*)expr;

        hres = visit_expression(ctx, cond_expr->expression);
        if(FAILED(hres))
            return hres;

        hres = visit_expression(ctx, cond_expr->true_expression);
        if(FAILED(hres))
            return hres;

        hres = visit_expression(ctx, cond_expr->false_expression);
        break;
    }
    case 158:
        hres = visit_function_expression(ctx, (function_expression_t*)expr);
        break;
    case 147:
        hres = visit_expression(ctx, ((member_expression_t*)expr)->expression);
        break;
    case 134: {
        property_definition_t *iter;
        for(iter = ((property_value_expression_t*)expr)->property_list; iter; iter = iter->next) {
            hres = visit_expression(ctx, iter->value);
            if(FAILED(hres))
                return hres;
        }
        break;
    }
    DEFAULT_UNREACHABLE;
    }

    return hres;
}
