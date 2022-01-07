
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vdisp_t ;
struct TYPE_4__ {int member_0; } ;
struct TYPE_5__ {char* gap; int stack; int buf; int buf_len; int stack_top; TYPE_1__ member_7; int member_6; int member_5; int * member_4; int member_3; int member_2; int * member_1; int * member_0; } ;
typedef TYPE_2__ stringify_ctx_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int WORD ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_NOTIMPL ;
 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ FAILED (scalar_t__) ;
 int FIXME (char*,int ) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int TRACE (char*) ;
 int assert (int) ;
 int debugstr_jsval (int ) ;
 int floor (double) ;
 double get_number (int ) ;
 int * get_string (int ) ;
 int heap_free (int ) ;
 scalar_t__ is_number (int ) ;
 scalar_t__ is_object_instance (int ) ;
 scalar_t__ is_string (int ) ;
 int * jsstr_alloc_len (int ,int ) ;
 int jsstr_extract (int *,int ,size_t,char*) ;
 size_t jsstr_length (int *) ;
 int jsval_release (int ) ;
 int jsval_string (int *) ;
 int jsval_undefined () ;
 scalar_t__ maybe_to_primitive (int *,int ,int *) ;
 scalar_t__ stringify (TYPE_2__*,int ) ;

__attribute__((used)) static HRESULT JSON_stringify(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv, jsval_t *r)
{
    stringify_ctx_t stringify_ctx = {ctx, ((void*)0),0,0, ((void*)0),0,0, {0}};
    HRESULT hres;

    TRACE("\n");

    if(!argc) {
        if(r)
            *r = jsval_undefined();
        return S_OK;
    }

    if(argc >= 2 && is_object_instance(argv[1])) {
        FIXME("Replacer %s not yet supported\n", debugstr_jsval(argv[1]));
        return E_NOTIMPL;
    }

    if(argc >= 3) {
        jsval_t space_val;

        hres = maybe_to_primitive(ctx, argv[2], &space_val);
        if(FAILED(hres))
            return hres;

        if(is_number(space_val)) {
            double n = get_number(space_val);
            if(n >= 1) {
                int i, len;
                if(n > 10)
                    n = 10;
                len = floor(n);
                for(i=0; i < len; i++)
                    stringify_ctx.gap[i] = ' ';
                stringify_ctx.gap[len] = 0;
            }
        }else if(is_string(space_val)) {
            jsstr_t *space_str = get_string(space_val);
            size_t len = jsstr_length(space_str);
            if(len > 10)
                len = 10;
            jsstr_extract(space_str, 0, len, stringify_ctx.gap);
        }

        jsval_release(space_val);
    }

    hres = stringify(&stringify_ctx, argv[0]);
    if(SUCCEEDED(hres) && r) {
        assert(!stringify_ctx.stack_top);

        if(hres == S_OK) {
            jsstr_t *ret = jsstr_alloc_len(stringify_ctx.buf, stringify_ctx.buf_len);
            if(ret)
                *r = jsval_string(ret);
            else
                hres = E_OUTOFMEMORY;
        }else {
            *r = jsval_undefined();
        }
    }

    heap_free(stringify_ctx.buf);
    heap_free(stringify_ctx.stack);
    return hres;
}
