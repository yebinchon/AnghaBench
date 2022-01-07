
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_persistent_script ;
typedef int zend_op_array ;
typedef int zend_file_cache_metainfo ;


 int SERIALIZE_PTR (int *) ;
 int UNSERIALIZE_PTR (int *) ;
 int * Z_PTR_P (int *) ;
 int zend_file_cache_serialize_op_array (int *,int *,int *,void*) ;

__attribute__((used)) static void zend_file_cache_serialize_func(zval *zv,
                                           zend_persistent_script *script,
                                           zend_file_cache_metainfo *info,
                                           void *buf)
{
 zend_op_array *op_array;

 SERIALIZE_PTR(Z_PTR_P(zv));
 op_array = Z_PTR_P(zv);
 UNSERIALIZE_PTR(op_array);
 zend_file_cache_serialize_op_array(op_array, script, info, buf);
}
