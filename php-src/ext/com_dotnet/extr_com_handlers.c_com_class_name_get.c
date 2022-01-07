
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_string ;
typedef int zend_object ;
struct TYPE_4__ {TYPE_1__* ce; } ;
typedef TYPE_2__ php_com_dotnet_object ;
struct TYPE_3__ {int name; } ;


 int * zend_string_copy (int ) ;

__attribute__((used)) static zend_string* com_class_name_get(const zend_object *object)
{
 php_com_dotnet_object *obj = (php_com_dotnet_object *)object;

 return zend_string_copy(obj->ce->name);
}
