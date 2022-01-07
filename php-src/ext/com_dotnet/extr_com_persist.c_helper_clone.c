
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_7__ {int ce; } ;
struct TYPE_6__ {scalar_t__ unk; scalar_t__ ipsi; scalar_t__ ips; scalar_t__ ipf; TYPE_2__ std; } ;
typedef TYPE_1__ php_com_persist_helper ;


 int IPersistFile_AddRef (scalar_t__) ;
 int IPersistStreamInit_AddRef (scalar_t__) ;
 int IPersistStream_AddRef (scalar_t__) ;
 int IUnknown_AddRef (scalar_t__) ;
 TYPE_1__* emalloc (int) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int zend_object_std_init (TYPE_2__*,int ) ;

__attribute__((used)) static zend_object* helper_clone(zend_object *obj)
{
 php_com_persist_helper *clone, *object = (php_com_persist_helper*) obj;

 clone = emalloc(sizeof(*object));
 memcpy(clone, object, sizeof(*object));

 zend_object_std_init(&clone->std, object->std.ce);

 if (clone->ipf) {
  IPersistFile_AddRef(clone->ipf);
 }
 if (clone->ips) {
  IPersistStream_AddRef(clone->ips);
 }
 if (clone->ipsi) {
  IPersistStreamInit_AddRef(clone->ipsi);
 }
 if (clone->unk) {
  IUnknown_AddRef(clone->unk);
 }
 return (zend_object*)clone;
}
