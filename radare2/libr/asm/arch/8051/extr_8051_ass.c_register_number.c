
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_indirect_reg (char const*) ;
 scalar_t__ is_reg (char const*) ;

__attribute__((used)) static int register_number(char const*reg) {
 if (is_reg (reg)) {
  return reg[1] - '0';
 }
 if (is_indirect_reg (reg)) {
  return reg[2] - '0';
 }
 return 8;
}
