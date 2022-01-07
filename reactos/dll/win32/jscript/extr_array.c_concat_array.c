
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jsval_t ;
typedef int jsdisp_t ;
struct TYPE_3__ {scalar_t__ length; int dispex; } ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ ArrayInstance ;


 int DISP_E_UNKNOWNNAME ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int jsdisp_get_idx (int *,scalar_t__,int *) ;
 int jsdisp_propput_idx (int *,scalar_t__,int ) ;
 int jsval_release (int ) ;

__attribute__((used)) static HRESULT concat_array(jsdisp_t *array, ArrayInstance *obj, DWORD *len)
{
    jsval_t val;
    DWORD i;
    HRESULT hres;

    for(i=0; i < obj->length; i++) {
        hres = jsdisp_get_idx(&obj->dispex, i, &val);
        if(hres == DISP_E_UNKNOWNNAME)
            continue;
        if(FAILED(hres))
            return hres;

        hres = jsdisp_propput_idx(array, *len+i, val);
        jsval_release(val);
        if(FAILED(hres))
            return hres;
    }

    *len += obj->length;
    return S_OK;
}
