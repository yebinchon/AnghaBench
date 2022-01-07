
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char zval ;
typedef int zend_bool ;
struct TYPE_7__ {char zv; int ht; } ;
struct TYPE_8__ {int flags; int * parent_container; TYPE_1__ backup; int str; struct TYPE_8__* child; int name_in_parent; } ;
typedef TYPE_2__ phpdbg_watch_element ;
typedef int HashTable ;
typedef int Bucket ;


 int * HT_FROM_ZVP (char*) ;
 int HT_WATCH_OFFSET ;
 scalar_t__ IS_INDIRECT ;
 int PHPDBG_WATCH_ARRAY ;
 int PHPDBG_WATCH_IMPLICIT ;
 int PHPDBG_WATCH_OBJECT ;
 int WATCH_ON_HASHTABLE ;
 int WATCH_ON_ZVAL ;
 char* Z_INDIRECT_P (char*) ;
 scalar_t__ Z_ISREF_P (char*) ;
 char* Z_REFVAL_P (char*) ;
 scalar_t__ Z_TYPE_P (char*) ;
 int phpdbg_add_bucket_watch_element (int *,TYPE_2__*) ;
 int phpdbg_add_ht_watch_element (char*,TYPE_2__*) ;
 scalar_t__ phpdbg_check_watch_diff (int ,char*,char*) ;
 int phpdbg_print_watch_diff (int ,int ,char*,char*) ;
 int phpdbg_watch_parent_ht (TYPE_2__*) ;
 char* zend_symtable_find (int *,int ) ;

zend_bool phpdbg_try_readding_watch_element(zval *parent, phpdbg_watch_element *element) {
 zval *zv;
 HashTable *ht = HT_FROM_ZVP(parent);

 if (!ht) {
  return 0;
 } else if (element->flags & (PHPDBG_WATCH_ARRAY | PHPDBG_WATCH_OBJECT)) {
  char *htPtr = ((char *) ht) + HT_WATCH_OFFSET;
  char *oldPtr = ((char *) &element->backup.ht) + HT_WATCH_OFFSET;
  if (phpdbg_check_watch_diff(WATCH_ON_HASHTABLE, oldPtr, htPtr)) {
   phpdbg_print_watch_diff(WATCH_ON_HASHTABLE, element->str, oldPtr, htPtr);
  }

  phpdbg_add_ht_watch_element(parent, element);
 } else if ((zv = zend_symtable_find(ht, element->name_in_parent))) {
  if (element->flags & PHPDBG_WATCH_IMPLICIT) {
   zval *next = zv;

   while (Z_TYPE_P(next) == IS_INDIRECT) {
    next = Z_INDIRECT_P(next);
   }
   if (Z_ISREF_P(next)) {
    next = Z_REFVAL_P(next);
   }

   if (!phpdbg_try_readding_watch_element(next, element->child)) {
    return 0;
   }
  } else if (phpdbg_check_watch_diff(WATCH_ON_ZVAL, &element->backup.zv, zv)) {
   phpdbg_print_watch_diff(WATCH_ON_ZVAL, element->str, &element->backup.zv, zv);
  }

  element->parent_container = ht;
  phpdbg_add_bucket_watch_element((Bucket *) zv, element);
  phpdbg_watch_parent_ht(element);
 } else {
  return 0;
 }

 return 1;
}
