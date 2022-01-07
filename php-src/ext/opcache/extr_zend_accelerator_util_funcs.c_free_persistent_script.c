
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * pDestructor; } ;
struct TYPE_6__ {scalar_t__ filename; TYPE_3__ class_table; TYPE_3__ function_table; } ;
struct TYPE_7__ {TYPE_1__ script; } ;
typedef TYPE_2__ zend_persistent_script ;


 int efree (TYPE_2__*) ;
 int zend_hash_destroy (TYPE_3__*) ;
 int zend_string_release_ex (scalar_t__,int ) ;

void free_persistent_script(zend_persistent_script *persistent_script, int destroy_elements)
{
 if (!destroy_elements) {
  persistent_script->script.function_table.pDestructor = ((void*)0);
  persistent_script->script.class_table.pDestructor = ((void*)0);
 }

 zend_hash_destroy(&persistent_script->script.function_table);
 zend_hash_destroy(&persistent_script->script.class_table);

 if (persistent_script->script.filename) {
  zend_string_release_ex(persistent_script->script.filename, 0);
 }

 efree(persistent_script);
}
