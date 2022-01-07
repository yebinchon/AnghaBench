
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dval; int * str; } ;
struct TYPE_5__ {int type; TYPE_1__ u; } ;
typedef TYPE_2__ literal_t ;
typedef int jsstr_t ;
typedef int compiler_ctx_t ;
typedef int HRESULT ;


 int DEFAULT_UNREACHABLE ;
 int E_OUTOFMEMORY ;


 int S_OK ;
 int double_to_string (int ,int **) ;

__attribute__((used)) static HRESULT literal_as_string(compiler_ctx_t *ctx, literal_t *literal, jsstr_t **str)
{
    switch(literal->type) {
    case 128:
        *str = literal->u.str;
        break;
    case 129:
        return double_to_string(literal->u.dval, str);
    DEFAULT_UNREACHABLE;
    }

    return *str ? S_OK : E_OUTOFMEMORY;
}
