
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
struct TYPE_2__ {int flags; scalar_t__ is_deleted; } ;
typedef TYPE_1__ phar_entry_info ;


 int PHAR_ENT_COMPRESSED_BZ2 ;
 int PHAR_ENT_COMPRESSED_GZ ;
 int PHAR_G (int ) ;
 int ZEND_HASH_APPLY_KEEP ;
 scalar_t__ Z_PTR_P (int *) ;
 int has_bz2 ;
 int has_zlib ;

__attribute__((used)) static int phar_test_compression(zval *zv, void *argument)
{
 phar_entry_info *entry = (phar_entry_info *)Z_PTR_P(zv);

 if (entry->is_deleted) {
  return ZEND_HASH_APPLY_KEEP;
 }

 if (!PHAR_G(has_bz2)) {
  if (entry->flags & PHAR_ENT_COMPRESSED_BZ2) {
   *(int *) argument = 0;
  }
 }

 if (!PHAR_G(has_zlib)) {
  if (entry->flags & PHAR_ENT_COMPRESSED_GZ) {
   *(int *) argument = 0;
  }
 }

 return ZEND_HASH_APPLY_KEEP;
}
