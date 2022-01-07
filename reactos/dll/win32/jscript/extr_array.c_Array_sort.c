
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int **** jsval_t ;
typedef int jsdisp_t ;
typedef int WORD ;
typedef scalar_t__ INT ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 scalar_t__ DISP_E_UNKNOWNNAME ;
 scalar_t__ E_FAIL ;
 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ FAILED (scalar_t__) ;
 int JSCLASS_FUNCTION ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int TRACE (char*) ;
 int WARN (char*,...) ;
 scalar_t__ get_length (int *,int *,int **,int*) ;
 int get_object (int ****) ;
 int ******** heap_alloc (int) ;
 int ******* heap_alloc_zero (int) ;
 int heap_free (int ******) ;
 int * iface_to_jsdisp (int ) ;
 int is_class (int *,int ) ;
 int is_object_instance (int ****) ;
 int jsdisp_addref (int *) ;
 scalar_t__ jsdisp_get_idx (int *,int,int *****) ;
 scalar_t__ jsdisp_propput_idx (int *,int,int ****) ;
 int jsdisp_release (int *) ;
 int ****** jsval_obj (int ) ;
 int jsval_release (int ****) ;
 int ****** jsval_undefined () ;
 int memcpy (int ******,int ******,int) ;
 scalar_t__ sort_cmp (int *,int *,int ****,int ****,scalar_t__*) ;

__attribute__((used)) static HRESULT Array_sort(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsdisp_t *jsthis, *cmp_func = ((void*)0);
    jsval_t *vtab, **sorttab = ((void*)0);
    DWORD length;
    DWORD i;
    HRESULT hres = S_OK;

    TRACE("\n");

    hres = get_length(ctx, vthis, &jsthis, &length);
    if(FAILED(hres))
        return hres;

    if(argc > 1) {
        WARN("invalid arg_cnt %d\n", argc);
        return E_FAIL;
    }

    if(argc == 1) {
        if(!is_object_instance(argv[0])) {
            WARN("arg is not dispatch\n");
            return E_FAIL;
        }

        cmp_func = iface_to_jsdisp(get_object(argv[0]));
        if(!cmp_func || !is_class(cmp_func, JSCLASS_FUNCTION)) {
            WARN("cmp_func is not a function\n");
            if(cmp_func)
                jsdisp_release(cmp_func);
            return E_FAIL;
        }
    }

    if(!length) {
        if(cmp_func)
            jsdisp_release(cmp_func);
        if(r)
            *r = jsval_obj(jsdisp_addref(jsthis));
        return S_OK;
    }

    vtab = heap_alloc_zero(length * sizeof(*vtab));
    if(vtab) {
        for(i=0; i<length; i++) {
            hres = jsdisp_get_idx(jsthis, i, vtab+i);
            if(hres == DISP_E_UNKNOWNNAME) {
                vtab[i] = jsval_undefined();
                hres = S_OK;
            } else if(FAILED(hres)) {
                WARN("Could not get elem %d: %08x\n", i, hres);
                break;
            }
        }
    }else {
        hres = E_OUTOFMEMORY;
    }

    if(SUCCEEDED(hres)) {
        sorttab = heap_alloc(length*2*sizeof(*sorttab));
        if(!sorttab)
            hres = E_OUTOFMEMORY;
    }


    if(SUCCEEDED(hres)) {
        jsval_t *tmpv, **tmpbuf;
        INT cmp;

        tmpbuf = sorttab + length;
        for(i=0; i < length; i++)
            sorttab[i] = vtab+i;

        for(i=0; i < length/2; i++) {
            hres = sort_cmp(ctx, cmp_func, *sorttab[2*i+1], *sorttab[2*i], &cmp);
            if(FAILED(hres))
                break;

            if(cmp < 0) {
                tmpv = sorttab[2*i];
                sorttab[2*i] = sorttab[2*i+1];
                sorttab[2*i+1] = tmpv;
            }
        }

        if(SUCCEEDED(hres)) {
            DWORD k, a, b, bend;

            for(k=2; k < length; k *= 2) {
                for(i=0; i+k < length; i += 2*k) {
                    a = b = 0;
                    if(i+2*k <= length)
                        bend = k;
                    else
                        bend = length - (i+k);

                    memcpy(tmpbuf, sorttab+i, k*sizeof(jsval_t*));

                    while(a < k && b < bend) {
                        hres = sort_cmp(ctx, cmp_func, *tmpbuf[a], *sorttab[i+k+b], &cmp);
                        if(FAILED(hres))
                            break;

                        if(cmp < 0) {
                            sorttab[i+a+b] = tmpbuf[a];
                            a++;
                        }else {
                            sorttab[i+a+b] = sorttab[i+k+b];
                            b++;
                        }
                    }

                    if(FAILED(hres))
                        break;

                    if(a < k)
                        memcpy(sorttab+i+a+b, tmpbuf+a, (k-a)*sizeof(jsval_t*));
                }

                if(FAILED(hres))
                    break;
            }
        }

        for(i=0; SUCCEEDED(hres) && i < length; i++)
            hres = jsdisp_propput_idx(jsthis, i, *sorttab[i]);
    }

    if(vtab) {
        for(i=0; i < length; i++)
            jsval_release(vtab[i]);
        heap_free(vtab);
    }
    heap_free(sorttab);
    if(cmp_func)
        jsdisp_release(cmp_func);

    if(FAILED(hres))
        return hres;

    if(r)
        *r = jsval_obj(jsdisp_addref(jsthis));
    return S_OK;
}
