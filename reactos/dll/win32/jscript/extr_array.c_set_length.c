
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jsdisp_t ;
struct TYPE_2__ {int length; } ;
typedef int HRESULT ;
typedef int DWORD ;


 int JSCLASS_ARRAY ;
 int S_OK ;
 TYPE_1__* array_from_jsdisp (int *) ;
 scalar_t__ is_class (int *,int ) ;
 int jsdisp_propput_name (int *,int ,int ) ;
 int jsval_number (int ) ;
 int lengthW ;

__attribute__((used)) static HRESULT set_length(jsdisp_t *obj, DWORD length)
{
    if(is_class(obj, JSCLASS_ARRAY)) {
        array_from_jsdisp(obj)->length = length;
        return S_OK;
    }

    return jsdisp_propput_name(obj, lengthW, jsval_number(length));
}
