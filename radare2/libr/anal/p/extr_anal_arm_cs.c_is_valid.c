
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ arm_reg ;


 scalar_t__ ARM_REG_INVALID ;

__attribute__((used)) static bool is_valid(arm_reg reg) {
 return reg != ARM_REG_INVALID;
}
