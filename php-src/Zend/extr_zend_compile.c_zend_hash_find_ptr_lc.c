
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef int HashTable ;


 int ALLOCA_FLAG (int ) ;
 int ZSTR_ALLOCA_ALLOC (int *,size_t,int ) ;
 int ZSTR_ALLOCA_FREE (int *,int ) ;
 int ZSTR_VAL (int *) ;
 int use_heap ;
 void* zend_hash_find_ptr (int *,int *) ;
 int zend_str_tolower_copy (int ,char const*,size_t) ;

__attribute__((used)) static void *zend_hash_find_ptr_lc(HashTable *ht, const char *str, size_t len) {
 void *result;
 zend_string *lcname;
 ALLOCA_FLAG(use_heap);

 ZSTR_ALLOCA_ALLOC(lcname, len, use_heap);
 zend_str_tolower_copy(ZSTR_VAL(lcname), str, len);
 result = zend_hash_find_ptr(ht, lcname);
 ZSTR_ALLOCA_FREE(lcname, use_heap);

 return result;
}
