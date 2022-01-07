
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int WORD ;
typedef int WCHAR ;
typedef int INT ;
typedef int HRESULT ;
typedef int DOUBLE ;
typedef scalar_t__ BOOL ;


 scalar_t__ FAILED (int ) ;
 scalar_t__ FALSE ;
 int NAN ;
 int S_OK ;
 scalar_t__ TRUE ;
 int WARN (char*,int) ;
 int char_to_int (int ) ;
 scalar_t__ iswspace (int const) ;
 int jsstr_release (int *) ;
 int jsval_number (int) ;
 int to_flat_string (int *,int ,int **,int const**) ;
 int to_int32 (int *,int ,int*) ;

__attribute__((used)) static HRESULT JSGlobal_parseInt(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    BOOL neg = FALSE, empty = TRUE;
    const WCHAR *ptr;
    DOUBLE ret = 0.0;
    INT radix=0, i;
    jsstr_t *str;
    HRESULT hres;

    if(!argc) {
        if(r)
            *r = jsval_number(NAN);
        return S_OK;
    }

    if(argc >= 2) {
        hres = to_int32(ctx, argv[1], &radix);
        if(FAILED(hres))
            return hres;

        if(radix && (radix < 2 || radix > 36)) {
            WARN("radix %d out of range\n", radix);
            if(r)
                *r = jsval_number(NAN);
            return S_OK;
        }
    }

    hres = to_flat_string(ctx, argv[0], &str, &ptr);
    if(FAILED(hres))
        return hres;

    while(iswspace(*ptr))
        ptr++;

    switch(*ptr) {
    case '+':
        ptr++;
        break;
    case '-':
        neg = TRUE;
        ptr++;
        break;
    }

    if(!radix) {
        if(*ptr == '0') {
            if(ptr[1] == 'x' || ptr[1] == 'X') {
                radix = 16;
                ptr += 2;
            }else {
                radix = 8;
                ptr++;
                empty = FALSE;
            }
        }else {
            radix = 10;
        }
    }else if(radix == 16 && *ptr == '0' && (ptr[1] == 'x' || ptr[1] == 'X')) {
        ptr += 2;
    }

    i = char_to_int(*ptr++);
    if(i < radix) {
        do {
            ret = ret*radix + i;
            i = char_to_int(*ptr++);
        }while(i < radix);
    }else if(empty) {
        ret = NAN;
    }

    jsstr_release(str);

    if(neg)
        ret = -ret;

    if(r)
        *r = jsval_number(ret);
    return S_OK;
}
