
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
struct TYPE_3__ {int length; int dispex; } ;
typedef int HRESULT ;
typedef TYPE_1__ ArrayInstance ;


 int JS_E_ARRAY_EXPECTED ;
 int TRACE (char*) ;
 int array_join (int *,int *,int ,int ,int ,int *) ;
 TYPE_1__* array_this (int *) ;
 int default_separatorW ;
 int lstrlenW (int ) ;
 int throw_type_error (int *,int ,int *) ;

__attribute__((used)) static HRESULT Array_toString(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    ArrayInstance *array;

    TRACE("\n");

    array = array_this(jsthis);
    if(!array)
        return throw_type_error(ctx, JS_E_ARRAY_EXPECTED, ((void*)0));

    return array_join(ctx, &array->dispex, array->length, default_separatorW,
                      lstrlenW(default_separatorW), r);
}
