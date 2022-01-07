
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 scalar_t__ DISP_E_UNKNOWNNAME ;
 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ S_OK ;
 int * heap_alloc (int) ;
 int heap_free (int *) ;
 scalar_t__ jsdisp_get_idx (int *,int,int *) ;
 scalar_t__ jsdisp_propget_name (int *,int ,int *) ;
 int jsval_release (int ) ;
 int jsval_undefined () ;
 int lengthW ;
 scalar_t__ to_uint32 (int *,int ,int*) ;

__attribute__((used)) static HRESULT array_to_args(script_ctx_t *ctx, jsdisp_t *arg_array, unsigned *argc, jsval_t **ret)
{
    jsval_t *argv, val;
    DWORD length, i;
    HRESULT hres;

    hres = jsdisp_propget_name(arg_array, lengthW, &val);
    if(FAILED(hres))
        return hres;

    hres = to_uint32(ctx, val, &length);
    jsval_release(val);
    if(FAILED(hres))
        return hres;

    argv = heap_alloc(length * sizeof(*argv));
    if(!argv)
        return E_OUTOFMEMORY;

    for(i=0; i<length; i++) {
        hres = jsdisp_get_idx(arg_array, i, argv+i);
        if(hres == DISP_E_UNKNOWNNAME) {
            argv[i] = jsval_undefined();
        }else if(FAILED(hres)) {
            while(i--)
                jsval_release(argv[i]);
            heap_free(argv);
            return hres;
        }
    }

    *argc = length;
    *ret = argv;
    return S_OK;
}
