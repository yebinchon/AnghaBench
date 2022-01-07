
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_ulong ;
typedef scalar_t__ phpdbg_opline_ptr_t ;
struct TYPE_3__ {scalar_t__ base; } ;
typedef TYPE_1__ phpdbg_breakline_t ;
typedef int phpdbg_breakbase_t ;


 size_t PHPDBG_BREAK_OPLINE ;
 int * PHPDBG_G (int ) ;
 int bp ;
 TYPE_1__* zend_hash_index_find_ptr (int *,int ) ;

__attribute__((used)) static inline phpdbg_breakbase_t *phpdbg_find_breakpoint_opline(phpdbg_opline_ptr_t opline)
{
 phpdbg_breakline_t *brake;

 if ((brake = zend_hash_index_find_ptr(&PHPDBG_G(bp)[PHPDBG_BREAK_OPLINE], (zend_ulong) opline)) && brake->base) {
  return (phpdbg_breakbase_t *)brake->base;
 }

 return (phpdbg_breakbase_t *) brake;
}
