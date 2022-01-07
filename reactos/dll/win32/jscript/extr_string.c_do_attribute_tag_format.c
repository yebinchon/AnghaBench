
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
 int get_string_val (int *,int *,int **) ;
 int * jsstr_alloc_buf (scalar_t__,char**) ;
 int jsstr_flush (int *,char*) ;
 scalar_t__ jsstr_length (int *) ;
 int jsstr_release (int *) ;
 int * jsstr_undefined () ;
 int jsval_string (int *) ;
 unsigned int lstrlenW (char const*) ;
 int memcpy (char*,char const*,unsigned int) ;
 int to_string (int *,int ,int **) ;

__attribute__((used)) static HRESULT do_attribute_tag_format(script_ctx_t *ctx, vdisp_t *jsthis, unsigned argc, jsval_t *argv, jsval_t *r,
        const WCHAR *tagname, const WCHAR *attrname)
{
    jsstr_t *str, *attr_value = ((void*)0);
    HRESULT hres;

    hres = get_string_val(ctx, jsthis, &str);
    if(FAILED(hres))
        return hres;

    if(argc) {
        hres = to_string(ctx, argv[0], &attr_value);
        if(FAILED(hres)) {
            jsstr_release(str);
            return hres;
        }
    }else {
        attr_value = jsstr_undefined();
    }

    if(r) {
        unsigned attrname_len = lstrlenW(attrname);
        unsigned tagname_len = lstrlenW(tagname);
        jsstr_t *ret;
        WCHAR *ptr;

        ret = jsstr_alloc_buf(2*tagname_len + attrname_len + jsstr_length(attr_value) + jsstr_length(str) + 9, &ptr);
        if(ret) {
            *ptr++ = '<';
            memcpy(ptr, tagname, tagname_len*sizeof(WCHAR));
            ptr += tagname_len;
            *ptr++ = ' ';
            memcpy(ptr, attrname, attrname_len*sizeof(WCHAR));
            ptr += attrname_len;
            *ptr++ = '=';
            *ptr++ = '"';
            ptr += jsstr_flush(attr_value, ptr);
            *ptr++ = '"';
            *ptr++ = '>';
            ptr += jsstr_flush(str, ptr);

            *ptr++ = '<';
            *ptr++ = '/';
            memcpy(ptr, tagname, tagname_len*sizeof(WCHAR));
            ptr += tagname_len;
            *ptr = '>';

            *r = jsval_string(ret);
        }else {
            hres = E_OUTOFMEMORY;
        }
    }

    jsstr_release(attr_value);
    jsstr_release(str);
    return hres;
}
