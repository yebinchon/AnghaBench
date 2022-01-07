
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int member_0; unsigned int member_1; int value; int member_2; } ;
typedef TYPE_1__ property_desc_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
typedef int WCHAR ;
typedef int HRESULT ;


 int TRUE ;
 int jsdisp_define_property (int *,int const*,TYPE_1__*) ;

HRESULT jsdisp_define_data_property(jsdisp_t *obj, const WCHAR *name, unsigned flags, jsval_t value)
{
    property_desc_t prop_desc = { flags, flags, TRUE };
    prop_desc.value = value;
    return jsdisp_define_property(obj, name, &prop_desc);
}
