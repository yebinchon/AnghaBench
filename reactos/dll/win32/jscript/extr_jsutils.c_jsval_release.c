
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsval_t ;


 int IDispatch_Release (int ) ;



 int VariantClear (int ) ;
 int get_object (int ) ;
 int get_string (int ) ;
 int get_variant (int ) ;
 int heap_free (int ) ;
 int jsstr_release (int ) ;
 int jsval_type (int ) ;

void jsval_release(jsval_t val)
{
    switch(jsval_type(val)) {
    case 130:
        if(get_object(val))
            IDispatch_Release(get_object(val));
        break;
    case 129:
        jsstr_release(get_string(val));
        break;
    case 128:
        VariantClear(get_variant(val));
        heap_free(get_variant(val));
        break;
    default:
        break;
    }
}
