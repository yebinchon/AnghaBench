
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int tmp_heap; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
typedef int WCHAR ;
struct TYPE_8__ {int dispex; int jsregexp; int * str; int last_index_val; } ;
typedef TYPE_2__ RegExpInstance ;
typedef int HRESULT ;
typedef int DWORD ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int S_OK ;
 int TRACE (char*,int ,int ) ;
 int WARN (char*) ;
 int alloc_regexp (TYPE_1__*,int *,TYPE_2__**) ;
 int debugstr_wn (int const*,int ) ;
 int jsdisp_release (int *) ;
 int * jsstr_addref (int *) ;
 int * jsstr_flatten (int *) ;
 int jsstr_length (int *) ;
 int jsval_number (int ) ;
 int regexp_new (TYPE_1__*,int *,int const*,int ,int ,int ) ;

HRESULT create_regexp(script_ctx_t *ctx, jsstr_t *src, DWORD flags, jsdisp_t **ret)
{
    RegExpInstance *regexp;
    const WCHAR *str;
    HRESULT hres;

    str = jsstr_flatten(src);
    if(!str)
        return E_OUTOFMEMORY;

    TRACE("%s %x\n", debugstr_wn(str, jsstr_length(src)), flags);

    hres = alloc_regexp(ctx, ((void*)0), &regexp);
    if(FAILED(hres))
        return hres;

    regexp->str = jsstr_addref(src);
    regexp->last_index_val = jsval_number(0);

    regexp->jsregexp = regexp_new(ctx, &ctx->tmp_heap, str, jsstr_length(regexp->str), flags, FALSE);
    if(!regexp->jsregexp) {
        WARN("regexp_new failed\n");
        jsdisp_release(&regexp->dispex);
        return E_FAIL;
    }

    *ret = &regexp->dispex;
    return S_OK;
}
