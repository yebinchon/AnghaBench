
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef char WCHAR ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int get_string_val (int *,int *,int **) ;
 int * jsstr_alloc_buf (scalar_t__,char**) ;
 int jsstr_flush (int *,char*) ;
 scalar_t__ jsstr_length (int *) ;
 int jsstr_release (int *) ;
 int jsval_string (int *) ;
 unsigned int lstrlenW (char const*) ;
 int memcpy (char*,char const*,unsigned int) ;

__attribute__((used)) static HRESULT do_attributeless_tag_format(script_ctx_t *ctx, vdisp_t *jsthis, jsval_t *r, const WCHAR *tagname)
{
    unsigned tagname_len;
    jsstr_t *str, *ret;
    WCHAR *ptr;
    HRESULT hres;

    hres = get_string_val(ctx, jsthis, &str);
    if(FAILED(hres))
        return hres;

    if(!r) {
        jsstr_release(str);
        return S_OK;
    }

    tagname_len = lstrlenW(tagname);

    ret = jsstr_alloc_buf(jsstr_length(str) + 2*tagname_len + 5, &ptr);
    if(!ret) {
        jsstr_release(str);
        return E_OUTOFMEMORY;
    }

    *ptr++ = '<';
    memcpy(ptr, tagname, tagname_len*sizeof(WCHAR));
    ptr += tagname_len;
    *ptr++ = '>';

    ptr += jsstr_flush(str, ptr);
    jsstr_release(str);

    *ptr++ = '<';
    *ptr++ = '/';
    memcpy(ptr, tagname, tagname_len*sizeof(WCHAR));
    ptr += tagname_len;
    *ptr = '>';

    *r = jsval_string(ret);
    return S_OK;
}
