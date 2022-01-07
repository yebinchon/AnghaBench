
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int jsval_t ;
typedef int jsstr_t ;
struct TYPE_6__ {char* ptr; int end; int ctx; } ;
typedef TYPE_1__ json_parse_ctx_t ;
typedef int jsdisp_t ;
typedef int WCHAR ;
typedef int HRESULT ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int FAILED (int ) ;
 int FALSE ;
 int FIXME (char*,...) ;
 int SUCCEEDED (int ) ;
 int S_OK ;
 int TRUE ;
 int create_array (int ,int ,int **) ;
 int create_object (int ,int *,int **) ;
 int debugstr_w (char*) ;
 int falseW ;
 int heap_free (int *) ;
 int is_keyword (TYPE_1__*,int ) ;
 int iswdigit (char) ;
 int jsdisp_propput_idx (int *,unsigned int,int ) ;
 int jsdisp_propput_name (int *,int *,int ) ;
 int jsdisp_release (int *) ;
 int * jsstr_alloc (int *) ;
 int jsval_bool (int ) ;
 int jsval_null () ;
 int jsval_number (int) ;
 int jsval_obj (int *) ;
 int jsval_release (int ) ;
 int jsval_string (int *) ;
 int nullW ;
 int parse_decimal (char**,int ,double*) ;
 int parse_json_string (TYPE_1__*,int **) ;
 char skip_spaces (TYPE_1__*) ;
 int trueW ;

__attribute__((used)) static HRESULT parse_json_value(json_parse_ctx_t *ctx, jsval_t *r)
{
    HRESULT hres;

    switch(skip_spaces(ctx)) {


    case 'n':
        if(!is_keyword(ctx, nullW))
            break;
        *r = jsval_null();
        return S_OK;


    case 't':
        if(!is_keyword(ctx, trueW))
            break;
        *r = jsval_bool(TRUE);
        return S_OK;
    case 'f':
        if(!is_keyword(ctx, falseW))
            break;
        *r = jsval_bool(FALSE);
        return S_OK;


    case '{': {
        WCHAR *prop_name;
        jsdisp_t *obj;
        jsval_t val;

        hres = create_object(ctx->ctx, ((void*)0), &obj);
        if(FAILED(hres))
            return hres;

        ctx->ptr++;
        if(skip_spaces(ctx) == '}') {
            ctx->ptr++;
            *r = jsval_obj(obj);
            return S_OK;
        }

        while(1) {
            if(*ctx->ptr != '"')
                break;
            hres = parse_json_string(ctx, &prop_name);
            if(FAILED(hres))
                break;

            if(skip_spaces(ctx) != ':') {
                FIXME("missing ':'\n");
                heap_free(prop_name);
                break;
            }

            ctx->ptr++;
            hres = parse_json_value(ctx, &val);
            if(SUCCEEDED(hres)) {
                hres = jsdisp_propput_name(obj, prop_name, val);
                jsval_release(val);
            }
            heap_free(prop_name);
            if(FAILED(hres))
                break;

            if(skip_spaces(ctx) == '}') {
                ctx->ptr++;
                *r = jsval_obj(obj);
                return S_OK;
            }

            if(*ctx->ptr++ != ',') {
                FIXME("expected ','\n");
                break;
            }
            skip_spaces(ctx);
        }

        jsdisp_release(obj);
        break;
    }


    case '"': {
        WCHAR *string;
        jsstr_t *str;

        hres = parse_json_string(ctx, &string);
        if(FAILED(hres))
            return hres;


        str = jsstr_alloc(string);
        heap_free(string);
        if(!str)
            return E_OUTOFMEMORY;

        *r = jsval_string(str);
        return S_OK;
    }


    case '[': {
        jsdisp_t *array;
        unsigned i = 0;
        jsval_t val;

        hres = create_array(ctx->ctx, 0, &array);
        if(FAILED(hres))
            return hres;

        ctx->ptr++;
        if(skip_spaces(ctx) == ']') {
            ctx->ptr++;
            *r = jsval_obj(array);
            return S_OK;
        }

        while(1) {
            hres = parse_json_value(ctx, &val);
            if(FAILED(hres))
                break;

            hres = jsdisp_propput_idx(array, i, val);
            jsval_release(val);
            if(FAILED(hres))
                break;

            if(skip_spaces(ctx) == ']') {
                ctx->ptr++;
                *r = jsval_obj(array);
                return S_OK;
            }

            if(*ctx->ptr != ',') {
                FIXME("expected ','\n");
                break;
            }

            ctx->ptr++;
            i++;
        }

        jsdisp_release(array);
        break;
    }


    default: {
        int sign = 1;
        double n;

        if(*ctx->ptr == '-') {
            sign = -1;
            ctx->ptr++;
            skip_spaces(ctx);
        }

        if(*ctx->ptr == '0' && ctx->ptr + 1 < ctx->end && iswdigit(ctx->ptr[1]))
            break;

        hres = parse_decimal(&ctx->ptr, ctx->end, &n);
        if(FAILED(hres))
            break;

        *r = jsval_number(sign*n);
        return S_OK;
    }
    }

    FIXME("Syntax error at %s\n", debugstr_w(ctx->ptr));
    return E_FAIL;
}
