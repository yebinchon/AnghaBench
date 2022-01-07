
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int disp; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef TYPE_2__ vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int WORD ;
typedef int WCHAR ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int TRACE (char*,int ) ;
 int WARN (char*,int ) ;
 int debugstr_wn (int const*,unsigned int) ;
 scalar_t__ iswspace (int const) ;
 int * jsstr_addref (int *) ;
 int * jsstr_alloc_len (int const*,int) ;
 unsigned int jsstr_length (int *) ;
 int jsstr_release (int *) ;
 int jsval_disp (int ) ;
 int jsval_string (int *) ;
 int to_flat_string (int *,int ,int **,int const**) ;

__attribute__((used)) static HRESULT String_trim(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc,
        jsval_t *argv, jsval_t *r)
{
    const WCHAR *str, *begin, *end;
    jsstr_t *jsstr;
    unsigned len;
    HRESULT hres;

    hres = to_flat_string(ctx, jsval_disp(jsthis->u.disp), &jsstr, &str);
    if(FAILED(hres)) {
        WARN("to_flat_string failed: %08x\n", hres);
        return hres;
    }
    len = jsstr_length(jsstr);
    TRACE("%s\n", debugstr_wn(str, len));

    for(begin = str, end = str + len; begin < end && iswspace(*begin); begin++);
    while(end > begin + 1 && iswspace(*(end-1))) end--;

    if(r) {
        jsstr_t *ret;

        if(begin == str && end == str + len)
            ret = jsstr_addref(jsstr);
        else
            ret = jsstr_alloc_len(begin, end - begin);
        if(ret)
            *r = jsval_string(ret);
        else
            hres = E_OUTOFMEMORY;
    }
    jsstr_release(jsstr);
    return hres;
}
