
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
struct TYPE_4__ {int * ctx; int const* end; int const* ptr; } ;
typedef TYPE_1__ json_parse_ctx_t ;
typedef int WORD ;
typedef int WCHAR ;
typedef int HRESULT ;


 int E_FAIL ;
 int E_INVALIDARG ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*) ;
 int S_OK ;
 int TRACE (char*,int ) ;
 int debugstr_w (int const*) ;
 int jsstr_length (int *) ;
 int jsstr_release (int *) ;
 int jsval_release (int ) ;
 int parse_json_value (TYPE_1__*,int *) ;
 scalar_t__ skip_spaces (TYPE_1__*) ;
 int to_flat_string (int *,int ,int **,int const**) ;

__attribute__((used)) static HRESULT JSON_parse(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv, jsval_t *r)
{
    json_parse_ctx_t parse_ctx;
    const WCHAR *buf;
    jsstr_t *str;
    jsval_t ret;
    HRESULT hres;

    if(argc != 1) {
        FIXME("Unsupported args\n");
        return E_INVALIDARG;
    }

    hres = to_flat_string(ctx, argv[0], &str, &buf);
    if(FAILED(hres))
        return hres;

    TRACE("%s\n", debugstr_w(buf));

    parse_ctx.ptr = buf;
    parse_ctx.end = buf + jsstr_length(str);
    parse_ctx.ctx = ctx;
    hres = parse_json_value(&parse_ctx, &ret);
    jsstr_release(str);
    if(FAILED(hres))
        return hres;

    if(skip_spaces(&parse_ctx)) {
        FIXME("syntax error\n");
        jsval_release(ret);
        return E_FAIL;
    }

    if(r)
        *r = ret;
    else
        jsval_release(ret);
    return S_OK;
}
