
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int main_op_array; int function_table; int class_table; int filename; } ;
struct TYPE_7__ {int arena_mem; TYPE_1__ script; void* mem; } ;
typedef TYPE_2__ zend_persistent_script ;


 int UNSERIALIZE_PTR (int ) ;
 int UNSERIALIZE_STR (int ) ;
 int ZEND_CLASS_DTOR ;
 int ZEND_FUNCTION_DTOR ;
 int zend_file_cache_unserialize_class ;
 int zend_file_cache_unserialize_func ;
 int zend_file_cache_unserialize_hash (int *,TYPE_2__*,void*,int ,int ) ;
 int zend_file_cache_unserialize_op_array (int *,TYPE_2__*,void*) ;

__attribute__((used)) static void zend_file_cache_unserialize(zend_persistent_script *script,
                                        void *buf)
{
 script->mem = buf;

 UNSERIALIZE_STR(script->script.filename);

 zend_file_cache_unserialize_hash(&script->script.class_table,
   script, buf, zend_file_cache_unserialize_class, ZEND_CLASS_DTOR);
 zend_file_cache_unserialize_hash(&script->script.function_table,
   script, buf, zend_file_cache_unserialize_func, ZEND_FUNCTION_DTOR);
 zend_file_cache_unserialize_op_array(&script->script.main_op_array, script, buf);

 UNSERIALIZE_PTR(script->arena_mem);
}
