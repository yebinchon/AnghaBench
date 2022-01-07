
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_2__ {scalar_t__ tags; scalar_t__ symbols; int * lib; scalar_t__ persistent; } ;
typedef TYPE_1__ zend_ffi ;


 int DL_UNLOAD (int *) ;
 int efree (scalar_t__) ;
 int zend_hash_destroy (scalar_t__) ;

__attribute__((used)) static void zend_ffi_free_obj(zend_object *object)
{
 zend_ffi *ffi = (zend_ffi*)object;

 if (ffi->persistent) {
  return;
 }

 if (ffi->lib) {
  DL_UNLOAD(ffi->lib);
  ffi->lib = ((void*)0);
 }

 if (ffi->symbols) {
  zend_hash_destroy(ffi->symbols);
  efree(ffi->symbols);
 }

 if (ffi->tags) {
  zend_hash_destroy(ffi->tags);
  efree(ffi->tags);
 }
}
