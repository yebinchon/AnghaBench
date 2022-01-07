
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object ;
struct TYPE_9__ {int std; int dimensions; int indices; TYPE_1__* obj; } ;
typedef TYPE_2__ php_com_saproxy ;
struct TYPE_8__ {int zo; } ;


 int GC_ADDREF (int *) ;
 int clone_indices (TYPE_2__*,TYPE_2__*,int ) ;
 TYPE_2__* emalloc (int) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int safe_emalloc (int ,int,int ) ;

__attribute__((used)) static zend_object* saproxy_clone(zend_object *object)
{
 php_com_saproxy *proxy = (php_com_saproxy *) object;
 php_com_saproxy *cloneproxy;

 cloneproxy = emalloc(sizeof(*cloneproxy));
 memcpy(cloneproxy, proxy, sizeof(*cloneproxy));

 GC_ADDREF(&cloneproxy->obj->zo);
 cloneproxy->indices = safe_emalloc(cloneproxy->dimensions, sizeof(zval *), 0);
 clone_indices(cloneproxy, proxy, proxy->dimensions);

 return &cloneproxy->std;
}
