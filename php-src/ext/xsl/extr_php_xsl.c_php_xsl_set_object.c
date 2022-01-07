
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {void* ptr; } ;
typedef TYPE_1__ xsl_object ;


 TYPE_1__* Z_XSL_P (int *) ;
 int xsl_object_set_data (void*,int *) ;

void php_xsl_set_object(zval *wrapper, void *obj)
{
 xsl_object *object;

 object = Z_XSL_P(wrapper);
 object->ptr = obj;
 xsl_object_set_data(obj, wrapper);
}
