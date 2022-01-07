
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int disp; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef TYPE_2__ vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
typedef int WORD ;
typedef int HRESULT ;
typedef unsigned int DWORD ;


 scalar_t__ FAILED (int ) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 int concat_obj (int *,int ,unsigned int*) ;
 int create_array (int *,int ,int **) ;
 int get_object (int ) ;
 scalar_t__ is_object_instance (int ) ;
 int jsdisp_propput_idx (int *,int ,int ) ;
 int jsdisp_release (int *) ;
 int jsval_obj (int *) ;

__attribute__((used)) static HRESULT Array_concat(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsdisp_t *ret;
    DWORD len = 0;
    HRESULT hres;

    TRACE("\n");

    hres = create_array(ctx, 0, &ret);
    if(FAILED(hres))
        return hres;

    hres = concat_obj(ret, jsthis->u.disp, &len);
    if(SUCCEEDED(hres)) {
        DWORD i;

        for(i=0; i < argc; i++) {
            if(is_object_instance(argv[i]))
                hres = concat_obj(ret, get_object(argv[i]), &len);
            else
                hres = jsdisp_propput_idx(ret, len++, argv[i]);
            if(FAILED(hres))
                break;
        }
    }

    if(FAILED(hres))
        return hres;

    if(r)
        *r = jsval_obj(ret);
    else
        jsdisp_release(ret);
    return S_OK;
}
