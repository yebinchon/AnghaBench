
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jsdisp_t ;
struct TYPE_2__ {int val; } ;
typedef int BOOL ;


 int JSCLASS_BOOLEAN ;
 int assert (int ) ;
 TYPE_1__* bool_from_jsdisp (int *) ;
 int is_class (int *,int ) ;

BOOL bool_obj_value(jsdisp_t *obj)
{
    assert(is_class(obj, JSCLASS_BOOLEAN));
    return bool_from_jsdisp(obj)->val;
}
