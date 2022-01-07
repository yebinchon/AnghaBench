
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
struct TYPE_3__ {int length; int dispex; } ;
typedef int HRESULT ;
typedef TYPE_1__ ArrayInstance ;


 int TRACE (char*) ;
 TYPE_1__* array_from_jsdisp (int *) ;
 int array_join (int *,int *,int ,int ,int ,int *) ;
 int default_separatorW ;
 int lstrlenW (int ) ;

__attribute__((used)) static HRESULT Array_get_value(script_ctx_t *ctx, jsdisp_t *jsthis, jsval_t *r)
{
    ArrayInstance *array = array_from_jsdisp(jsthis);

    TRACE("\n");

    return array_join(ctx, &array->dispex, array->length, default_separatorW,
                      lstrlenW(default_separatorW), r);
}
