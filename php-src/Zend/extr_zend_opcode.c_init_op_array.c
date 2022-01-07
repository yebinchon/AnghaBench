
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_uchar ;
struct TYPE_4__ {int* refcount; int cache_size; int reserved; int run_time_cache; int * literals; scalar_t__ last_literal; scalar_t__ fn_flags; scalar_t__ last_try_catch; int * static_variables; int static_variables_ptr; scalar_t__ last_live_range; int * try_catch_array; int * live_range; int * prototype; int * scope; scalar_t__ required_num_args; scalar_t__ num_args; int * arg_info; int * doc_comment; int filename; int * function_name; scalar_t__ T; int * vars; scalar_t__ last_var; scalar_t__ opcodes; scalar_t__ last; scalar_t__* arg_flags; int type; } ;
typedef TYPE_1__ zend_op_array ;
typedef int zend_op ;
typedef int uint32_t ;
typedef int llist_apply_with_arg_func_t ;


 int ZEND_EXTENSIONS_HAVE_OP_ARRAY_CTOR ;
 int ZEND_MAP_PTR_INIT (int ,int **) ;
 int ZEND_MAX_RESERVED_RESOURCES ;
 scalar_t__ emalloc (int) ;
 int memset (int ,int ,int) ;
 int zend_extension_flags ;
 scalar_t__ zend_extension_op_array_ctor_handler ;
 int zend_extensions ;
 int zend_get_compiled_filename () ;
 int zend_llist_apply_with_argument (int *,int ,TYPE_1__*) ;
 int zend_op_array_extension_handles ;

void init_op_array(zend_op_array *op_array, zend_uchar type, int initial_ops_size)
{
 op_array->type = type;
 op_array->arg_flags[0] = 0;
 op_array->arg_flags[1] = 0;
 op_array->arg_flags[2] = 0;

 op_array->refcount = (uint32_t *) emalloc(sizeof(uint32_t));
 *op_array->refcount = 1;
 op_array->last = 0;
 op_array->opcodes = emalloc(initial_ops_size * sizeof(zend_op));

 op_array->last_var = 0;
 op_array->vars = ((void*)0);

 op_array->T = 0;

 op_array->function_name = ((void*)0);
 op_array->filename = zend_get_compiled_filename();
 op_array->doc_comment = ((void*)0);

 op_array->arg_info = ((void*)0);
 op_array->num_args = 0;
 op_array->required_num_args = 0;

 op_array->scope = ((void*)0);
 op_array->prototype = ((void*)0);

 op_array->live_range = ((void*)0);
 op_array->try_catch_array = ((void*)0);
 op_array->last_live_range = 0;

 op_array->static_variables = ((void*)0);
 ZEND_MAP_PTR_INIT(op_array->static_variables_ptr, &op_array->static_variables);
 op_array->last_try_catch = 0;

 op_array->fn_flags = 0;

 op_array->last_literal = 0;
 op_array->literals = ((void*)0);

 ZEND_MAP_PTR_INIT(op_array->run_time_cache, ((void*)0));
 op_array->cache_size = zend_op_array_extension_handles * sizeof(void*);

 memset(op_array->reserved, 0, ZEND_MAX_RESERVED_RESOURCES * sizeof(void*));

 if (zend_extension_flags & ZEND_EXTENSIONS_HAVE_OP_ARRAY_CTOR) {
  zend_llist_apply_with_argument(&zend_extensions, (llist_apply_with_arg_func_t) zend_extension_op_array_ctor_handler, op_array);
 }
}
