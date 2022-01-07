
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
typedef scalar_t__ UINT ;
typedef int INT ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int PROPF_CONFIGURABLE ;
 int PROPF_ENUMERABLE ;
 int PROPF_WRITABLE ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int alloc_error (int *,int *,int *,int **) ;
 int descriptionW ;
 int jsdisp_define_data_property (int *,int ,int,int ) ;
 int jsdisp_release (int *) ;
 int jsval_number (int ) ;
 int jsval_string (int *) ;
 int messageW ;
 int numberW ;

__attribute__((used)) static HRESULT create_error(script_ctx_t *ctx, jsdisp_t *constr,
        UINT number, jsstr_t *msg, jsdisp_t **ret)
{
    jsdisp_t *err;
    HRESULT hres;

    hres = alloc_error(ctx, ((void*)0), constr, &err);
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_data_property(err, numberW, PROPF_WRITABLE | PROPF_CONFIGURABLE,
                                       jsval_number((INT)number));
    if(FAILED(hres)) {
        jsdisp_release(err);
        return hres;
    }

    hres = jsdisp_define_data_property(err, messageW,
                                       PROPF_WRITABLE | PROPF_ENUMERABLE | PROPF_CONFIGURABLE,
                                       jsval_string(msg));
    if(SUCCEEDED(hres))
        hres = jsdisp_define_data_property(err, descriptionW, PROPF_WRITABLE | PROPF_CONFIGURABLE,
                                           jsval_string(msg));
    if(FAILED(hres)) {
        jsdisp_release(err);
        return hres;
    }

    *ret = err;
    return S_OK;
}
