
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ static_variables; int * refcount; int filename; } ;
struct TYPE_8__ {int filename; TYPE_3__ main_op_array; scalar_t__ first_early_binding_opline; } ;
struct TYPE_9__ {TYPE_1__ script; } ;
typedef TYPE_2__ zend_persistent_script ;
typedef TYPE_3__ zend_op_array ;
typedef int zend_file_handle ;
typedef scalar_t__ uint32_t ;


 int GC_ADDREF (scalar_t__) ;
 int GC_FLAGS (scalar_t__) ;
 int IS_ARRAY_IMMUTABLE ;
 TYPE_2__* create_persistent_script () ;
 TYPE_3__* preload_orig_compile_file (int *,int) ;
 int preload_scripts ;
 int zend_hash_add_ptr (int ,int ,TYPE_2__*) ;
 int zend_string_copy (int ) ;
 int zend_string_hash_val (int ) ;

__attribute__((used)) static zend_op_array *preload_compile_file(zend_file_handle *file_handle, int type)
{
 zend_op_array *op_array = preload_orig_compile_file(file_handle, type);

 if (op_array && op_array->refcount) {
  zend_persistent_script *script;

  script = create_persistent_script();
  script->script.first_early_binding_opline = (uint32_t)-1;
  script->script.filename = zend_string_copy(op_array->filename);
  zend_string_hash_val(script->script.filename);
  script->script.main_op_array = *op_array;


  op_array->refcount = ((void*)0);

  if (op_array->static_variables &&
      !(GC_FLAGS(op_array->static_variables) & IS_ARRAY_IMMUTABLE)) {
   GC_ADDREF(op_array->static_variables);
  }

  zend_hash_add_ptr(preload_scripts, script->script.filename, script);
 }

 return op_array;
}
