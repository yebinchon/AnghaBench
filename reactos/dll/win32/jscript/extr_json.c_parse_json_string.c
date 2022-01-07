
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ptr; } ;
typedef TYPE_1__ json_parse_ctx_t ;
typedef char WCHAR ;
typedef int HRESULT ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int FIXME (char*) ;
 int S_OK ;
 char* heap_alloc (size_t) ;
 int heap_free (char*) ;
 int memcpy (char*,char const*,size_t) ;
 int unescape (char*,size_t*) ;

__attribute__((used)) static HRESULT parse_json_string(json_parse_ctx_t *ctx, WCHAR **r)
{
    const WCHAR *ptr = ++ctx->ptr;
    size_t len;
    WCHAR *buf;

    while(*ctx->ptr && *ctx->ptr != '"') {
        if(*ctx->ptr++ == '\\')
            ctx->ptr++;
    }
    if(!*ctx->ptr) {
        FIXME("unterminated string\n");
        return E_FAIL;
    }

    len = ctx->ptr-ptr;
    buf = heap_alloc((len+1)*sizeof(WCHAR));
    if(!buf)
        return E_OUTOFMEMORY;
    if(len)
        memcpy(buf, ptr, len*sizeof(WCHAR));

    if(!unescape(buf, &len)) {
        FIXME("unescape failed\n");
        heap_free(buf);
        return E_FAIL;
    }

    buf[len] = 0;
    ctx->ptr++;
    *r = buf;
    return S_OK;
}
