
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
typedef int WORD ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int JSCLASS_REGEXP ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 int create_regexp (int *,int *,int ,int **) ;
 int get_object (int ) ;
 int get_string_val (int *,int *,int **) ;
 int * iface_to_jsdisp (int ) ;
 int is_class (int *,int ) ;
 scalar_t__ is_object_instance (int ) ;
 int jsdisp_release (int *) ;
 int jsstr_release (int *) ;
 int jsval_null () ;
 int regexp_string_match (int *,int *,int *,int *) ;
 int to_string (int *,int ,int **) ;

__attribute__((used)) static HRESULT String_match(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsdisp_t *regexp = ((void*)0);
    jsstr_t *str;
    HRESULT hres;

    TRACE("\n");

    if(!argc) {
        if(r)
            *r = jsval_null();
        return S_OK;
    }

    if(is_object_instance(argv[0])) {
        regexp = iface_to_jsdisp(get_object(argv[0]));
        if(regexp && !is_class(regexp, JSCLASS_REGEXP)) {
            jsdisp_release(regexp);
            regexp = ((void*)0);
        }
    }

    if(!regexp) {
        jsstr_t *match_str;

        hres = to_string(ctx, argv[0], &match_str);
        if(FAILED(hres))
            return hres;

        hres = create_regexp(ctx, match_str, 0, &regexp);
        jsstr_release(match_str);
        if(FAILED(hres))
            return hres;
    }

    hres = get_string_val(ctx, jsthis, &str);
    if(SUCCEEDED(hres))
        hres = regexp_string_match(ctx, regexp, str, r);

    jsdisp_release(regexp);
    jsstr_release(str);
    return hres;
}
