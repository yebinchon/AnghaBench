
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_blacklist_entry ;
struct TYPE_3__ {int pos; int size; int * entries; } ;
typedef TYPE_1__ zend_blacklist ;


 scalar_t__ ZEND_BLACKLIST_BLOCK_SIZE ;
 scalar_t__ realloc (int *,int) ;

__attribute__((used)) static inline void zend_accel_blacklist_allocate(zend_blacklist *blacklist)
{
 if (blacklist->pos == blacklist->size) {
  blacklist->size += ZEND_BLACKLIST_BLOCK_SIZE;
  blacklist->entries = (zend_blacklist_entry *) realloc(blacklist->entries, sizeof(zend_blacklist_entry)*blacklist->size);
 }
}
