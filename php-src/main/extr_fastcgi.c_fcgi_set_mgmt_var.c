
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;


 int GC_MAKE_PERSISTENT_LOCAL (int *) ;
 int ZVAL_NEW_STR (int *,int *) ;
 int * Z_STR (int ) ;
 int fcgi_mgmt_vars ;
 int zend_hash_add (int *,int *,int *) ;
 int * zend_string_init (char const*,size_t,int) ;
 int zend_string_release_ex (int *,int) ;

void fcgi_set_mgmt_var(const char * name, size_t name_len, const char * value, size_t value_len)
{
 zval zvalue;
 zend_string *key = zend_string_init(name, name_len, 1);
 ZVAL_NEW_STR(&zvalue, zend_string_init(value, value_len, 1));
 GC_MAKE_PERSISTENT_LOCAL(key);
 GC_MAKE_PERSISTENT_LOCAL(Z_STR(zvalue));
 zend_hash_add(&fcgi_mgmt_vars, key, &zvalue);
 zend_string_release_ex(key, 1);
}
