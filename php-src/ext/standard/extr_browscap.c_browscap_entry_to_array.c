
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
typedef size_t uint32_t ;
struct TYPE_7__ {TYPE_1__* kv; } ;
typedef TYPE_2__ browser_data ;
struct TYPE_8__ {size_t kv_start; size_t kv_end; int parent; int pattern; } ;
typedef TYPE_3__ browscap_entry ;
struct TYPE_6__ {int key; int value; } ;
typedef int HashTable ;


 int ZVAL_STR (int *,int ) ;
 int ZVAL_STR_COPY (int *,int ) ;
 int browscap_convert_pattern (int ,int ) ;
 int zend_hash_add (int *,int ,int *) ;
 int zend_hash_str_add (int *,char*,int,int *) ;
 int * zend_new_array (int) ;

__attribute__((used)) static HashTable *browscap_entry_to_array(browser_data *bdata, browscap_entry *entry) {
 zval tmp;
 uint32_t i;

 HashTable *ht = zend_new_array(8);

 ZVAL_STR(&tmp, browscap_convert_pattern(entry->pattern, 0));
 zend_hash_str_add(ht, "browser_name_regex", sizeof("browser_name_regex")-1, &tmp);

 ZVAL_STR_COPY(&tmp, entry->pattern);
 zend_hash_str_add(ht, "browser_name_pattern", sizeof("browser_name_pattern")-1, &tmp);

 if (entry->parent) {
  ZVAL_STR_COPY(&tmp, entry->parent);
  zend_hash_str_add(ht, "parent", sizeof("parent")-1, &tmp);
 }

 for (i = entry->kv_start; i < entry->kv_end; i++) {
  ZVAL_STR_COPY(&tmp, bdata->kv[i].value);
  zend_hash_add(ht, bdata->kv[i].key, &tmp);
 }

 return ht;
}
