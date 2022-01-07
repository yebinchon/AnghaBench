
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
struct TYPE_3__ {int last_index_val; } ;
typedef TYPE_1__ RegExpInstance ;
typedef int HRESULT ;


 int TRACE (char*) ;
 int jsval_copy (int ,int *) ;
 TYPE_1__* regexp_from_jsdisp (int *) ;

__attribute__((used)) static HRESULT RegExp_get_lastIndex(script_ctx_t *ctx, jsdisp_t *jsthis, jsval_t *r)
{
    RegExpInstance *regexp = regexp_from_jsdisp(jsthis);

    TRACE("\n");

    return jsval_copy(regexp->last_index_val, r);
}
