
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int vdisp_t ;
struct TYPE_17__ {TYPE_4__* buf; int len; int member_2; int member_1; int * member_0; } ;
typedef TYPE_2__ strbuf_t ;
struct TYPE_18__ {int last_match_index; int last_match_length; int * last_match; } ;
typedef TYPE_3__ script_ctx_t ;
struct TYPE_19__ {int const* cp; int match_len; int paren_count; TYPE_1__* parens; int member_0; } ;
typedef TYPE_4__ match_state_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
typedef int WORD ;
typedef int WCHAR ;
struct TYPE_16__ {int index; int length; } ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 int ARRAY_SIZE (int const*) ;
 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ FAILED (scalar_t__) ;
 int JSCLASS_FUNCTION ;
 int JSCLASS_REGEXP ;
 int REM_ALLOC_RESULT ;
 int REM_CHECK_GLOBAL ;
 int REM_NO_CTX_UPDATE ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int TRACE (char*,...) ;
 int debugstr_jsstr (int *) ;
 int get_object (int ) ;
 scalar_t__ get_string_flat_val (TYPE_3__*,int *,int **,int const**) ;
 int heap_free (TYPE_4__*) ;
 int * iface_to_jsdisp (int ) ;
 int is_class (int *,int ) ;
 scalar_t__ is_object_instance (int ) ;
 int iswdigit (int const) ;
 int jsdisp_release (int *) ;
 int * jsstr_addref (int *) ;
 int * jsstr_alloc_len (TYPE_4__*,int ) ;
 int jsstr_length (int *) ;
 int jsstr_release (int *) ;
 int jsval_string (int *) ;
 scalar_t__ regexp_match_next (TYPE_3__*,int *,int,int *,TYPE_4__**) ;
 scalar_t__ rep_call (TYPE_3__*,int *,int *,int const*,TYPE_4__*,int **) ;
 scalar_t__ strbuf_append (TYPE_2__*,int const*,...) ;
 scalar_t__ strbuf_append_jsstr (TYPE_2__*,int *) ;
 scalar_t__ to_flat_string (TYPE_3__*,int ,int **,int const**) ;
 int* wcschr (int const*,char) ;
 int const* wcsstr (int const*,int const*) ;

__attribute__((used)) static HRESULT String_replace(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    const WCHAR *str, *match_str = ((void*)0), *rep_str = ((void*)0);
    jsstr_t *rep_jsstr, *match_jsstr, *jsstr;
    jsdisp_t *rep_func = ((void*)0), *regexp = ((void*)0);
    match_state_t *match = ((void*)0), last_match = {0};
    strbuf_t ret = {((void*)0),0,0};
    DWORD re_flags = REM_NO_CTX_UPDATE|REM_ALLOC_RESULT;
    DWORD rep_len=0;
    HRESULT hres = S_OK;

    TRACE("\n");

    hres = get_string_flat_val(ctx, jsthis, &jsstr, &str);
    if(FAILED(hres))
        return hres;

    if(!argc) {
        if(r)
            *r = jsval_string(jsstr);
        else
            jsstr_release(jsstr);
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
        hres = to_flat_string(ctx, argv[0], &match_jsstr, &match_str);
        if(FAILED(hres)) {
            jsstr_release(jsstr);
            return hres;
        }
    }

    if(argc >= 2) {
        if(is_object_instance(argv[1])) {
            rep_func = iface_to_jsdisp(get_object(argv[1]));
            if(rep_func && !is_class(rep_func, JSCLASS_FUNCTION)) {
                jsdisp_release(rep_func);
                rep_func = ((void*)0);
            }
        }

        if(!rep_func) {
            hres = to_flat_string(ctx, argv[1], &rep_jsstr, &rep_str);
            if(SUCCEEDED(hres))
                rep_len = jsstr_length(rep_jsstr);
        }
    }

    if(SUCCEEDED(hres)) {
        const WCHAR *ecp = str;

        while(1) {
            if(regexp) {
                hres = regexp_match_next(ctx, regexp, re_flags, jsstr, &match);
                re_flags = (re_flags | REM_CHECK_GLOBAL) & (~REM_ALLOC_RESULT);

                if(hres == S_FALSE) {
                    hres = S_OK;
                    break;
                }
                if(FAILED(hres))
                    break;

                last_match.cp = match->cp;
                last_match.match_len = match->match_len;
            }else {
                if(re_flags & REM_ALLOC_RESULT) {
                    re_flags &= ~REM_ALLOC_RESULT;
                    match = &last_match;
                    match->cp = str;
                }

                match->cp = wcsstr(match->cp, match_str);
                if(!match->cp)
                    break;
                match->match_len = jsstr_length(match_jsstr);
                match->cp += match->match_len;
            }

            hres = strbuf_append(&ret, ecp, match->cp-ecp-match->match_len);
            ecp = match->cp;
            if(FAILED(hres))
                break;

            if(rep_func) {
                jsstr_t *cstr;

                hres = rep_call(ctx, rep_func, jsstr, str, match, &cstr);
                if(FAILED(hres))
                    break;

                hres = strbuf_append_jsstr(&ret, cstr);
                jsstr_release(cstr);
                if(FAILED(hres))
                    break;
            }else if(rep_str && regexp) {
                const WCHAR *ptr = rep_str, *ptr2;

                while((ptr2 = wcschr(ptr, '$'))) {
                    hres = strbuf_append(&ret, ptr, ptr2-ptr);
                    if(FAILED(hres))
                        break;

                    switch(ptr2[1]) {
                    case '$':
                        hres = strbuf_append(&ret, ptr2, 1);
                        ptr = ptr2+2;
                        break;
                    case '&':
                        hres = strbuf_append(&ret, match->cp-match->match_len, match->match_len);
                        ptr = ptr2+2;
                        break;
                    case '`':
                        hres = strbuf_append(&ret, str, match->cp-str-match->match_len);
                        ptr = ptr2+2;
                        break;
                    case '\'':
                        hres = strbuf_append(&ret, ecp, (str+jsstr_length(jsstr))-ecp);
                        ptr = ptr2+2;
                        break;
                    default: {
                        DWORD idx;

                        if(!iswdigit(ptr2[1])) {
                            hres = strbuf_append(&ret, ptr2, 1);
                            ptr = ptr2+1;
                            break;
                        }

                        idx = ptr2[1] - '0';
                        if(iswdigit(ptr2[2]) && idx*10 + (ptr2[2]-'0') <= match->paren_count) {
                            idx = idx*10 + (ptr[2]-'0');
                            ptr = ptr2+3;
                        }else if(idx && idx <= match->paren_count) {
                            ptr = ptr2+2;
                        }else {
                            hres = strbuf_append(&ret, ptr2, 1);
                            ptr = ptr2+1;
                            break;
                        }

                        if(match->parens[idx-1].index != -1)
                            hres = strbuf_append(&ret, str+match->parens[idx-1].index,
                                    match->parens[idx-1].length);
                    }
                    }

                    if(FAILED(hres))
                        break;
                }

                if(SUCCEEDED(hres))
                    hres = strbuf_append(&ret, ptr, (rep_str+rep_len)-ptr);
                if(FAILED(hres))
                    break;
            }else if(rep_str) {
                hres = strbuf_append(&ret, rep_str, rep_len);
                if(FAILED(hres))
                    break;
            }else {
                static const WCHAR undefinedW[] = {'u','n','d','e','f','i','n','e','d'};

                hres = strbuf_append(&ret, undefinedW, ARRAY_SIZE(undefinedW));
                if(FAILED(hres))
                    break;
            }

            if(!regexp)
                break;
            else if(!match->match_len)
                match->cp++;
        }

        if(SUCCEEDED(hres))
            hres = strbuf_append(&ret, ecp, str+jsstr_length(jsstr)-ecp);
    }

    if(rep_func)
        jsdisp_release(rep_func);
    if(rep_str)
        jsstr_release(rep_jsstr);
    if(match_str)
        jsstr_release(match_jsstr);
    if(regexp)
        heap_free(match);

    if(SUCCEEDED(hres) && last_match.cp && regexp) {
        jsstr_release(ctx->last_match);
        ctx->last_match = jsstr_addref(jsstr);
        ctx->last_match_index = last_match.cp-str-last_match.match_len;
        ctx->last_match_length = last_match.match_len;
    }

    if(regexp)
        jsdisp_release(regexp);
    jsstr_release(jsstr);

    if(SUCCEEDED(hres) && r) {
        jsstr_t *ret_str;

        ret_str = jsstr_alloc_len(ret.buf, ret.len);
        if(!ret_str)
            return E_OUTOFMEMORY;

        TRACE("= %s\n", debugstr_jsstr(ret_str));
        *r = jsval_string(ret_str);
    }

    heap_free(ret.buf);
    return hres;
}
