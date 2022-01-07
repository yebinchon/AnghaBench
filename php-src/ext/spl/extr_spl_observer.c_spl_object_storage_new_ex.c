
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int zval ;
struct TYPE_22__ {int * handlers; } ;
typedef TYPE_2__ zend_object ;
struct TYPE_23__ {struct TYPE_23__* parent; int function_table; } ;
typedef TYPE_3__ zend_class_entry ;
struct TYPE_24__ {TYPE_2__ std; TYPE_8__* fptr_get_hash; int storage; scalar_t__ pos; } ;
typedef TYPE_4__ spl_SplObjectStorage ;
struct TYPE_21__ {TYPE_3__* scope; } ;
struct TYPE_25__ {TYPE_1__ common; } ;


 TYPE_4__* emalloc (scalar_t__) ;
 int memset (TYPE_4__*,int ,int) ;
 int object_properties_init (TYPE_2__*,TYPE_3__*) ;
 TYPE_3__* spl_ce_SplObjectStorage ;
 int spl_handler_SplObjectStorage ;
 int spl_object_storage_addall (TYPE_4__*,TYPE_4__*) ;
 int spl_object_storage_dtor ;
 TYPE_4__* spl_object_storage_from_obj (TYPE_2__*) ;
 int zend_hash_init (int *,int ,int *,int ,int ) ;
 TYPE_8__* zend_hash_str_find_ptr (int *,char*,int) ;
 scalar_t__ zend_object_properties_size (TYPE_3__*) ;
 int zend_object_std_init (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static zend_object *spl_object_storage_new_ex(zend_class_entry *class_type, zend_object *orig)
{
 spl_SplObjectStorage *intern;
 zend_class_entry *parent = class_type;

 intern = emalloc(sizeof(spl_SplObjectStorage) + zend_object_properties_size(parent));
 memset(intern, 0, sizeof(spl_SplObjectStorage) - sizeof(zval));
 intern->pos = 0;

 zend_object_std_init(&intern->std, class_type);
 object_properties_init(&intern->std, class_type);

 zend_hash_init(&intern->storage, 0, ((void*)0), spl_object_storage_dtor, 0);

 intern->std.handlers = &spl_handler_SplObjectStorage;

 while (parent) {
  if (parent == spl_ce_SplObjectStorage) {
   if (class_type != spl_ce_SplObjectStorage) {
    intern->fptr_get_hash = zend_hash_str_find_ptr(&class_type->function_table, "gethash", sizeof("gethash") - 1);
    if (intern->fptr_get_hash->common.scope == spl_ce_SplObjectStorage) {
     intern->fptr_get_hash = ((void*)0);
    }
   }
   break;
  }

  parent = parent->parent;
 }

 if (orig) {
  spl_SplObjectStorage *other = spl_object_storage_from_obj(orig);
  spl_object_storage_addall(intern, other);
 }

 return &intern->std;
}
