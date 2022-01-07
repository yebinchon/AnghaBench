
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ x86_reg ;


 scalar_t__ X86_REG_INVALID ;

__attribute__((used)) static bool is_valid(x86_reg reg) {
 return reg != X86_REG_INVALID;
}
