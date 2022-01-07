
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int main_op_array; int function_table; int class_table; int filename; } ;
struct TYPE_11__ {int size; char* mem; int arena_mem; TYPE_1__ script; int timestamp; } ;
typedef TYPE_2__ zend_persistent_script ;
struct TYPE_12__ {void* magic; void* system_id; int mem_size; int script_offset; int timestamp; scalar_t__ str_size; } ;
typedef TYPE_3__ zend_file_cache_metainfo ;


 int SERIALIZE_PTR (int ) ;
 int SERIALIZE_STR (int ) ;
 char* accel_system_id ;
 int memcpy (void*,char*,int) ;
 int zend_file_cache_serialize_class ;
 int zend_file_cache_serialize_func ;
 int zend_file_cache_serialize_hash (int *,TYPE_2__*,TYPE_3__*,void*,int ) ;
 int zend_file_cache_serialize_op_array (int *,TYPE_2__*,TYPE_3__*,void*) ;

__attribute__((used)) static void zend_file_cache_serialize(zend_persistent_script *script,
                                      zend_file_cache_metainfo *info,
                                      void *buf)
{
 zend_persistent_script *new_script;

 memcpy(info->magic, "OPCACHE", 8);
 memcpy(info->system_id, accel_system_id, 32);
 info->mem_size = script->size;
 info->str_size = 0;
 info->script_offset = (char*)script - (char*)script->mem;
 info->timestamp = script->timestamp;

 memcpy(buf, script->mem, script->size);

 new_script = (zend_persistent_script*)((char*)buf + info->script_offset);
 SERIALIZE_STR(new_script->script.filename);

 zend_file_cache_serialize_hash(&new_script->script.class_table, script, info, buf, zend_file_cache_serialize_class);
 zend_file_cache_serialize_hash(&new_script->script.function_table, script, info, buf, zend_file_cache_serialize_func);
 zend_file_cache_serialize_op_array(&new_script->script.main_op_array, script, info, buf);

 SERIALIZE_PTR(new_script->arena_mem);
 new_script->mem = ((void*)0);
}
