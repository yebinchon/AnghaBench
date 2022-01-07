
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* var_info; } ;
typedef TYPE_2__ zend_ssa ;
typedef int uint32_t ;
struct TYPE_4__ {int is_instanceof; scalar_t__ ce; int type; } ;


 int zend_dump_type_info (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void zend_dump_ssa_var_info(const zend_ssa *ssa, int ssa_var_num, uint32_t dump_flags)
{
 zend_dump_type_info(
  ssa->var_info[ssa_var_num].type,
  ssa->var_info[ssa_var_num].ce,
  ssa->var_info[ssa_var_num].ce ?
   ssa->var_info[ssa_var_num].is_instanceof : 0,
  dump_flags);
}
