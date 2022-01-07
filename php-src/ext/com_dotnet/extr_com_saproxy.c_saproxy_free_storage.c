
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_4__ {int indices; TYPE_1__* obj; } ;
typedef TYPE_2__ php_com_saproxy ;
struct TYPE_3__ {int zo; } ;


 int OBJ_RELEASE (int *) ;
 int efree (int ) ;
 int zend_object_std_dtor (int *) ;

__attribute__((used)) static void saproxy_free_storage(zend_object *object)
{
 php_com_saproxy *proxy = (php_com_saproxy *)object;
 OBJ_RELEASE(&proxy->obj->zo);

 zend_object_std_dtor(object);

 efree(proxy->indices);
}
