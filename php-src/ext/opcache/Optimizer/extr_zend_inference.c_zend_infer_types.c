
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef int zend_ulong ;
struct TYPE_14__ {scalar_t__ type; } ;
typedef TYPE_1__ zend_ssa_var_info ;
struct TYPE_15__ {int vars_count; TYPE_1__* var_info; } ;
typedef TYPE_2__ zend_ssa ;
typedef int zend_script ;
struct TYPE_16__ {int last_var; } ;
typedef TYPE_3__ zend_op_array ;
typedef int zend_long ;
typedef int zend_bitset ;
struct TYPE_13__ {int return_info; } ;


 int ALLOCA_FLAG (int ) ;
 int FAILURE ;
 scalar_t__ SUCCESS ;
 TYPE_11__* ZEND_FUNC_INFO (TYPE_3__ const*) ;
 int do_alloca (int,int ) ;
 int free_alloca (int ,int ) ;
 int memset (int ,int ,int) ;
 int use_heap ;
 int zend_bitset_incl (int ,int) ;
 int zend_bitset_len (int) ;
 int zend_func_return_info (TYPE_3__ const*,int const*,int,int ,int *) ;
 scalar_t__ zend_infer_types_ex (TYPE_3__ const*,int const*,TYPE_2__*,int ,int ) ;
 int zend_type_narrowing (TYPE_3__ const*,int const*,TYPE_2__*,int ) ;

__attribute__((used)) static int zend_infer_types(const zend_op_array *op_array, const zend_script *script, zend_ssa *ssa, zend_long optimization_level)
{
 zend_ssa_var_info *ssa_var_info = ssa->var_info;
 int ssa_vars_count = ssa->vars_count;
 int j;
 zend_bitset worklist;
 ALLOCA_FLAG(use_heap);

 worklist = do_alloca(sizeof(zend_ulong) * zend_bitset_len(ssa_vars_count), use_heap);
 memset(worklist, 0, sizeof(zend_ulong) * zend_bitset_len(ssa_vars_count));


 for (j = op_array->last_var; j < ssa_vars_count; j++) {
  zend_bitset_incl(worklist, j);
  ssa_var_info[j].type = 0;
 }

 if (zend_infer_types_ex(op_array, script, ssa, worklist, optimization_level) != SUCCESS) {
  free_alloca(worklist, use_heap);
  return FAILURE;
 }


 zend_type_narrowing(op_array, script, ssa, optimization_level);

 if (ZEND_FUNC_INFO(op_array)) {
  zend_func_return_info(op_array, script, 1, 0, &ZEND_FUNC_INFO(op_array)->return_info);
 }

 free_alloca(worklist, use_heap);
 return SUCCESS;
}
