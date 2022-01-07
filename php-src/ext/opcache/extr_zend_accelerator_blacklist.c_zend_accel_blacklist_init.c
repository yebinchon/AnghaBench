
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_blacklist_entry ;
struct TYPE_4__ {int * regexp_list; int * entries; int size; scalar_t__ pos; } ;
typedef TYPE_1__ zend_blacklist ;


 int ACCEL_LOG_FATAL ;
 int ZEND_BLACKLIST_BLOCK_SIZE ;
 scalar_t__ calloc (int,int ) ;
 int zend_accel_blacklist_shutdown (TYPE_1__*) ;
 int zend_accel_error (int ,char*) ;

void zend_accel_blacklist_init(zend_blacklist *blacklist)
{
 blacklist->pos = 0;
 blacklist->size = ZEND_BLACKLIST_BLOCK_SIZE;

 if (blacklist->entries != ((void*)0)) {
  zend_accel_blacklist_shutdown(blacklist);
 }

 blacklist->entries = (zend_blacklist_entry *) calloc(sizeof(zend_blacklist_entry), blacklist->size);
 if (!blacklist->entries) {
  zend_accel_error(ACCEL_LOG_FATAL, "Blacklist initialization: no memory\n");
  return;
 }
 blacklist->regexp_list = ((void*)0);
}
