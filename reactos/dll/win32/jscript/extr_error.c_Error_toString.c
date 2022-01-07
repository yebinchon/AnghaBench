
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vdisp_t ;
struct TYPE_4__ {int version; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
typedef int WORD ;
typedef char WCHAR ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 int * get_jsdisp (int *) ;
 int is_undefined (int ) ;
 int jsdisp_propget_name (int *,int ,int *) ;
 int * jsstr_alloc (char const*) ;
 int * jsstr_alloc_buf (unsigned int,char**) ;
 int jsstr_flush (int *,char*) ;
 unsigned int jsstr_length (int *) ;
 int jsstr_release (int *) ;
 int jsval_release (int ) ;
 int jsval_string (int *) ;
 int messageW ;
 int nameW ;
 int to_string (TYPE_1__*,int ,int **) ;

__attribute__((used)) static HRESULT Error_toString(script_ctx_t *ctx, vdisp_t *vthis, WORD flags,
        unsigned argc, jsval_t *argv, jsval_t *r)
{
    jsdisp_t *jsthis;
    jsstr_t *name = ((void*)0), *msg = ((void*)0), *ret = ((void*)0);
    jsval_t v;
    HRESULT hres;

    static const WCHAR object_errorW[] = {'[','o','b','j','e','c','t',' ','E','r','r','o','r',']',0};

    TRACE("\n");

    jsthis = get_jsdisp(vthis);
    if(!jsthis || ctx->version < 2) {
        if(r) {
            jsstr_t *str;

            str = jsstr_alloc(object_errorW);
            if(!str)
                return E_OUTOFMEMORY;
            *r = jsval_string(str);
        }
        return S_OK;
    }

    hres = jsdisp_propget_name(jsthis, nameW, &v);
    if(FAILED(hres))
        return hres;

    if(!is_undefined(v)) {
        hres = to_string(ctx, v, &name);
        jsval_release(v);
        if(FAILED(hres))
            return hres;
    }

    hres = jsdisp_propget_name(jsthis, messageW, &v);
    if(SUCCEEDED(hres)) {
        if(!is_undefined(v)) {
            hres = to_string(ctx, v, &msg);
            jsval_release(v);
        }
    }

    if(SUCCEEDED(hres)) {
        unsigned name_len = name ? jsstr_length(name) : 0;
        unsigned msg_len = msg ? jsstr_length(msg) : 0;

        if(name_len && msg_len) {
            WCHAR *ptr;

            ret = jsstr_alloc_buf(name_len + msg_len + 2, &ptr);
            if(ret) {
                jsstr_flush(name, ptr);
                ptr[name_len] = ':';
                ptr[name_len+1] = ' ';
                jsstr_flush(msg, ptr+name_len+2);
            }else {
                hres = E_OUTOFMEMORY;
            }
        }else if(name_len) {
            ret = name;
            name = ((void*)0);
        }else if(msg_len) {
            ret = msg;
            msg = ((void*)0);
        }else {
            ret = jsstr_alloc(object_errorW);
        }
    }

    if(msg)
        jsstr_release(msg);
    if(name)
        jsstr_release(name);
    if(FAILED(hres))
        return hres;
    if(!ret)
        return E_OUTOFMEMORY;

    if(r)
        *r = jsval_string(ret);
    else
        jsstr_release(ret);
    return S_OK;
}
