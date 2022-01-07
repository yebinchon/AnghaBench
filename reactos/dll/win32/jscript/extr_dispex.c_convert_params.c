
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jsval_t ;
struct TYPE_3__ {unsigned int cArgs; unsigned int cNamedArgs; unsigned int rgvarg; } ;
typedef int HRESULT ;
typedef TYPE_1__ DISPPARAMS ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int * heap_alloc (unsigned int) ;
 int heap_free (int *) ;
 int jsval_release (int ) ;
 int variant_to_jsval (unsigned int,int *) ;

__attribute__((used)) static HRESULT convert_params(const DISPPARAMS *dp, jsval_t *buf, unsigned *argc, jsval_t **ret)
{
    jsval_t *argv;
    unsigned cnt;
    unsigned i;
    HRESULT hres;

    cnt = dp->cArgs - dp->cNamedArgs;

    if(cnt > 6) {
        argv = heap_alloc(cnt * sizeof(*argv));
        if(!argv)
            return E_OUTOFMEMORY;
    }else {
        argv = buf;
    }

    for(i = 0; i < cnt; i++) {
        hres = variant_to_jsval(dp->rgvarg+dp->cArgs-i-1, argv+i);
        if(FAILED(hres)) {
            while(i--)
                jsval_release(argv[i]);
            if(argv != buf)
                heap_free(argv);
            return hres;
        }
    }

    *argc = cnt;
    *ret = argv;
    return S_OK;
}
