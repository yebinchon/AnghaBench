
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
typedef int WCHAR ;
struct TYPE_5__ {TYPE_1__* jsregexp; int * str; } ;
struct TYPE_4__ {unsigned int flags; } ;
typedef TYPE_2__ RegExpInstance ;
typedef int HRESULT ;


 int E_NOTIMPL ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int ) ;
 int JSCLASS_REGEXP ;
 int create_regexp (int *,int *,unsigned int,int **) ;
 int debugstr_jsval (int ) ;
 int get_object (int ) ;
 int * get_string (int ) ;
 int * iface_to_jsdisp (int ) ;
 scalar_t__ is_class (int *,int ) ;
 scalar_t__ is_object_instance (int ) ;
 int is_string (int ) ;
 int jsdisp_release (int *) ;
 int * jsstr_flatten (int *) ;
 unsigned int jsstr_length (int *) ;
 int parse_regexp_flags (int const*,unsigned int,unsigned int*) ;
 TYPE_2__* regexp_from_jsdisp (int *) ;

HRESULT create_regexp_var(script_ctx_t *ctx, jsval_t src_arg, jsval_t *flags_arg, jsdisp_t **ret)
{
    unsigned flags, opt_len = 0;
    const WCHAR *opt = ((void*)0);
    jsstr_t *src;
    HRESULT hres;

    if(is_object_instance(src_arg)) {
        jsdisp_t *obj;

        obj = iface_to_jsdisp(get_object(src_arg));
        if(obj) {
            if(is_class(obj, JSCLASS_REGEXP)) {
                RegExpInstance *regexp = regexp_from_jsdisp(obj);

                hres = create_regexp(ctx, regexp->str, regexp->jsregexp->flags, ret);
                jsdisp_release(obj);
                return hres;
            }

            jsdisp_release(obj);
        }
    }

    if(!is_string(src_arg)) {
        FIXME("src_arg = %s\n", debugstr_jsval(src_arg));
        return E_NOTIMPL;
    }

    src = get_string(src_arg);

    if(flags_arg) {
        jsstr_t *opt_str;

        if(!is_string(*flags_arg)) {
            FIXME("unimplemented for %s\n", debugstr_jsval(*flags_arg));
            return E_NOTIMPL;
        }

        opt_str = get_string(*flags_arg);
        opt = jsstr_flatten(opt_str);
        if(!opt)
            return E_OUTOFMEMORY;
        opt_len = jsstr_length(opt_str);
    }

    hres = parse_regexp_flags(opt, opt_len, &flags);
    if(FAILED(hres))
        return hres;

    return create_regexp(ctx, src, flags, ret);
}
