
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int WORD ;
typedef char WCHAR ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int TRACE (char*) ;
 int * jsstr_alloc (char const*) ;
 int jsval_string (int *) ;

__attribute__((used)) static HRESULT JSGlobal_ScriptEngine(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    static const WCHAR JScriptW[] = {'J','S','c','r','i','p','t',0};

    TRACE("\n");

    if(r) {
        jsstr_t *ret;

        ret = jsstr_alloc(JScriptW);
        if(!ret)
            return E_OUTOFMEMORY;

        *r = jsval_string(ret);
    }

    return S_OK;
}
