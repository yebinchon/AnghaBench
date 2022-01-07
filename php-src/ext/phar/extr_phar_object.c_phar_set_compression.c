
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int uint32_t ;
struct TYPE_2__ {int is_modified; int flags; int old_flags; scalar_t__ is_deleted; } ;
typedef TYPE_1__ phar_entry_info ;


 int PHAR_ENT_COMPRESSION_MASK ;
 int ZEND_HASH_APPLY_KEEP ;
 scalar_t__ Z_PTR_P (int *) ;

__attribute__((used)) static int phar_set_compression(zval *zv, void *argument)
{
 phar_entry_info *entry = (phar_entry_info *)Z_PTR_P(zv);
 uint32_t compress = *(uint32_t *)argument;

 if (entry->is_deleted) {
  return ZEND_HASH_APPLY_KEEP;
 }

 entry->old_flags = entry->flags;
 entry->flags &= ~PHAR_ENT_COMPRESSION_MASK;
 entry->flags |= compress;
 entry->is_modified = 1;
 return ZEND_HASH_APPLY_KEEP;
}
