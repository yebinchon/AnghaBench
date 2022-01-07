
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int zval ;
struct TYPE_17__ {int h; scalar_t__ key; } ;
typedef TYPE_1__ zend_hash_key ;
struct TYPE_18__ {int inf; int obj; } ;
typedef TYPE_2__ spl_SplObjectStorageElement ;
struct TYPE_19__ {int storage; } ;
typedef TYPE_3__ spl_SplObjectStorage ;


 scalar_t__ FAILURE ;
 int ZVAL_COPY (int *,int *) ;
 int ZVAL_NULL (int *) ;
 int spl_object_storage_free_hash (TYPE_3__*,TYPE_1__*) ;
 TYPE_2__* spl_object_storage_get (TYPE_3__*,TYPE_1__*) ;
 scalar_t__ spl_object_storage_get_hash (TYPE_1__*,TYPE_3__*,int *) ;
 TYPE_2__* zend_hash_index_update_mem (int *,int ,TYPE_2__*,int) ;
 TYPE_2__* zend_hash_update_mem (int *,scalar_t__,TYPE_2__*,int) ;
 int zval_ptr_dtor (int *) ;

spl_SplObjectStorageElement *spl_object_storage_attach(spl_SplObjectStorage *intern, zval *obj, zval *inf)
{
 spl_SplObjectStorageElement *pelement, element;
 zend_hash_key key;
 if (spl_object_storage_get_hash(&key, intern, obj) == FAILURE) {
  return ((void*)0);
 }

 pelement = spl_object_storage_get(intern, &key);

 if (pelement) {
  zval_ptr_dtor(&pelement->inf);
  if (inf) {
   ZVAL_COPY(&pelement->inf, inf);
  } else {
   ZVAL_NULL(&pelement->inf);
  }
  spl_object_storage_free_hash(intern, &key);
  return pelement;
 }

 ZVAL_COPY(&element.obj, obj);
 if (inf) {
  ZVAL_COPY(&element.inf, inf);
 } else {
  ZVAL_NULL(&element.inf);
 }
 if (key.key) {
  pelement = zend_hash_update_mem(&intern->storage, key.key, &element, sizeof(spl_SplObjectStorageElement));
 } else {
  pelement = zend_hash_index_update_mem(&intern->storage, key.h, &element, sizeof(spl_SplObjectStorageElement));
 }
 spl_object_storage_free_hash(intern, &key);
 return pelement;
}
