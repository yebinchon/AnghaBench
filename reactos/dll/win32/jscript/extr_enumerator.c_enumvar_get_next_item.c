
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VARIANT ;
struct TYPE_3__ {scalar_t__ atend; void* item; int enumvar; } ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ EnumeratorInstance ;


 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IEnumVARIANT_Next (int ,int,int *,int *) ;
 scalar_t__ S_OK ;
 scalar_t__ TRUE ;
 int VariantClear (int *) ;
 int VariantInit (int *) ;
 int WARN (char*) ;
 int jsval_release (void*) ;
 void* jsval_undefined () ;
 scalar_t__ variant_to_jsval (int *,void**) ;

__attribute__((used)) static inline HRESULT enumvar_get_next_item(EnumeratorInstance *This)
{
    HRESULT hres;
    VARIANT nextitem;

    if (This->atend)
        return S_OK;


    jsval_release(This->item);


    VariantInit(&nextitem);
    hres = IEnumVARIANT_Next(This->enumvar, 1, &nextitem, ((void*)0));
    if (hres == S_OK)
    {
        hres = variant_to_jsval(&nextitem, &This->item);
        VariantClear(&nextitem);
        if (FAILED(hres))
        {
            WARN("failed to convert jsval to variant!\n");
            This->item = jsval_undefined();
            return hres;
        }
    }
    else
    {
        This->item = jsval_undefined();
        This->atend = TRUE;
    }

    return S_OK;
}
