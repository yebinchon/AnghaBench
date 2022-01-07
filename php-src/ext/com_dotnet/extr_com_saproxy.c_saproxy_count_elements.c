
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_object ;
typedef scalar_t__ zend_long ;
struct TYPE_4__ {int dimensions; TYPE_1__* obj; } ;
typedef TYPE_2__ php_com_saproxy ;
struct TYPE_3__ {int v; } ;
typedef scalar_t__ LONG ;


 int FAILURE ;
 int SUCCESS ;
 int SafeArrayGetLBound (int ,int ,scalar_t__*) ;
 int SafeArrayGetUBound (int ,int ,scalar_t__*) ;
 int V_ARRAY (int *) ;
 int V_ISARRAY (int *) ;

__attribute__((used)) static int saproxy_count_elements(zend_object *object, zend_long *count)
{
 php_com_saproxy *proxy = (php_com_saproxy*) object;
 LONG ubound, lbound;

 if (!V_ISARRAY(&proxy->obj->v)) {
  return FAILURE;
 }

 SafeArrayGetLBound(V_ARRAY(&proxy->obj->v), proxy->dimensions, &lbound);
 SafeArrayGetUBound(V_ARRAY(&proxy->obj->v), proxy->dimensions, &ubound);

 *count = ubound - lbound + 1;

 return SUCCESS;
}
