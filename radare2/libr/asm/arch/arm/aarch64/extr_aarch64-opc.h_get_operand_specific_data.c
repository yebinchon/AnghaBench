
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int flags; } ;
typedef TYPE_1__ aarch64_operand ;


 unsigned int OPD_F_OD_LSB ;
 unsigned int OPD_F_OD_MASK ;

__attribute__((used)) static inline unsigned int
get_operand_specific_data (const aarch64_operand *operand)
{
  return (operand->flags & OPD_F_OD_MASK) >> OPD_F_OD_LSB;
}
