
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zend_object ;
typedef scalar_t__ zend_long ;
struct TYPE_2__ {int v; } ;
typedef TYPE_1__ php_com_dotnet_object ;
typedef scalar_t__ LONG ;


 int FAILURE ;
 int SUCCESS ;
 int SafeArrayGetLBound (int ,int,scalar_t__*) ;
 int SafeArrayGetUBound (int ,int,scalar_t__*) ;
 int V_ARRAY (int *) ;
 int V_ISARRAY (int *) ;

__attribute__((used)) static int com_object_count(zend_object *object, zend_long *count)
{
 php_com_dotnet_object *obj;
 LONG ubound = 0, lbound = 0;

 obj = (php_com_dotnet_object*) object;

 if (!V_ISARRAY(&obj->v)) {
  return FAILURE;
 }

 SafeArrayGetLBound(V_ARRAY(&obj->v), 1, &lbound);
 SafeArrayGetUBound(V_ARRAY(&obj->v), 1, &ubound);

 *count = ubound - lbound + 1;

 return SUCCESS;
}
