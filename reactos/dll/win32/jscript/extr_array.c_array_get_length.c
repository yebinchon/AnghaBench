
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jsdisp_t ;
struct TYPE_2__ {int length; } ;


 int JSCLASS_ARRAY ;
 TYPE_1__* array_from_jsdisp (int *) ;
 int assert (int ) ;
 int is_class (int *,int ) ;

unsigned array_get_length(jsdisp_t *array)
{
    assert(is_class(array, JSCLASS_ARRAY));
    return array_from_jsdisp(array)->length;
}
