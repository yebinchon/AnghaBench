
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ce; int type_mask; } ;
typedef TYPE_1__ zend_ssa_type_constraint ;
typedef int zend_ssa ;
typedef int zend_op_array ;
typedef int uint32_t ;


 int fprintf (int ,char*) ;
 int stderr ;
 int zend_dump_type_info (int ,int ,int,int ) ;

__attribute__((used)) static void zend_dump_type_constraint(const zend_op_array *op_array, const zend_ssa *ssa, const zend_ssa_type_constraint *constraint, uint32_t dump_flags)
{
 fprintf(stderr, " TYPE");
 zend_dump_type_info(constraint->type_mask, constraint->ce, 1, dump_flags);
}
