
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ aarch64_operand ;


 int FALSE ;
 int OPD_F_HAS_INSERTER ;
 int TRUE ;

__attribute__((used)) static inline bfd_boolean
operand_has_inserter (const aarch64_operand *operand)
{
  return (operand->flags & OPD_F_HAS_INSERTER) ? TRUE : FALSE;
}
