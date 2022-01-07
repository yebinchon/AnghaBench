
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_2__ {int std; scalar_t__ unk; scalar_t__ ipsi; scalar_t__ ips; scalar_t__ ipf; } ;
typedef TYPE_1__ php_com_persist_helper ;


 int IPersistFile_Release (scalar_t__) ;
 int IPersistStreamInit_Release (scalar_t__) ;
 int IPersistStream_Release (scalar_t__) ;
 int IUnknown_Release (scalar_t__) ;
 int zend_object_std_dtor (int *) ;

__attribute__((used)) static void helper_free_storage(zend_object *obj)
{
 php_com_persist_helper *object = (php_com_persist_helper*)obj;

 if (object->ipf) {
  IPersistFile_Release(object->ipf);
 }
 if (object->ips) {
  IPersistStream_Release(object->ips);
 }
 if (object->ipsi) {
  IPersistStreamInit_Release(object->ipsi);
 }
 if (object->unk) {
  IUnknown_Release(object->unk);
 }
 zend_object_std_dtor(&object->std);
}
