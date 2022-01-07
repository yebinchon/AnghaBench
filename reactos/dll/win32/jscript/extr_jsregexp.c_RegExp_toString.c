
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int WORD ;
typedef int WCHAR ;
struct TYPE_5__ {int str; TYPE_1__* jsregexp; } ;
struct TYPE_4__ {unsigned int flags; } ;
typedef TYPE_2__ RegExpInstance ;
typedef int HRESULT ;


 int E_NOTIMPL ;
 int E_OUTOFMEMORY ;
 int FIXME (char*) ;
 int JSCLASS_REGEXP ;
 unsigned int REG_FOLD ;
 unsigned int REG_GLOB ;
 unsigned int REG_MULTILINE ;
 int S_OK ;
 int TRACE (char*) ;
 int is_vclass (int *,int ) ;
 int * jsstr_alloc_buf (unsigned int,int **) ;
 int jsstr_flush (int ,int *) ;
 int jsstr_length (int ) ;
 int jsval_string (int *) ;
 TYPE_2__* regexp_from_vdisp (int *) ;

__attribute__((used)) static HRESULT RegExp_toString(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    RegExpInstance *regexp;
    unsigned len, f;
    jsstr_t *ret;
    WCHAR *ptr;

    TRACE("\n");

    if(!is_vclass(jsthis, JSCLASS_REGEXP)) {
        FIXME("Not a RegExp\n");
        return E_NOTIMPL;
    }

    regexp = regexp_from_vdisp(jsthis);

    if(!r)
        return S_OK;

    len = jsstr_length(regexp->str) + 2;

    f = regexp->jsregexp->flags;
    if(f & REG_FOLD)
        len++;
    if(f & REG_GLOB)
        len++;
    if(f & REG_MULTILINE)
        len++;

    ret = jsstr_alloc_buf(len, &ptr);
    if(!ret)
        return E_OUTOFMEMORY;

    *ptr++ = '/';
    ptr += jsstr_flush(regexp->str, ptr);
    *ptr++ = '/';

    if(f & REG_FOLD)
        *ptr++ = 'i';
    if(f & REG_GLOB)
        *ptr++ = 'g';
    if(f & REG_MULTILINE)
        *ptr++ = 'm';

    *r = jsval_string(ret);
    return S_OK;
}
