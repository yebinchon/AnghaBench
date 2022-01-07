
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_long ;
typedef int ITypeLib ;


 int php_com_typelibraries ;
 int php_com_typelibraries_mutex ;
 int tsrm_mutex_lock (int ) ;
 int tsrm_mutex_unlock (int ) ;
 int * zend_hash_str_add_ptr (int *,char*,int ,int *) ;

ITypeLib *php_com_cache_typelib(ITypeLib* TL, char *cache_key, zend_long cache_key_len) {
 ITypeLib* result;




 result = zend_hash_str_add_ptr(&php_com_typelibraries, cache_key, cache_key_len, TL);





 return result;
}
