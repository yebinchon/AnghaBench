
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;
typedef int amd29k_instr_t ;


 int AMD29K_GET_TYPE (int *,int) ;
 int AMD29K_GET_VALUE (int *,int) ;
 scalar_t__ AMD29K_IS_1 (int ) ;
 scalar_t__ AMD29K_IS_2 (int ,int ) ;
 int AMD29K_TYPE_JMP ;
 int AMD29K_TYPE_REG ;
 scalar_t__ UT64_MAX ;

ut64 amd29k_instr_jump(ut64 address, amd29k_instr_t* instruction) {
 if (!instruction) {
  return UT64_MAX;
 }
 int t0 = AMD29K_GET_TYPE (instruction, 0);
 int t1 = AMD29K_GET_TYPE (instruction, 1);
 int t2 = AMD29K_GET_TYPE (instruction, 2);
 int t3 = AMD29K_GET_TYPE (instruction, 3);
 int t4 = AMD29K_GET_TYPE (instruction, 4);
 int t5 = AMD29K_GET_TYPE (instruction, 5);

 int v0 = AMD29K_GET_VALUE (instruction, 0);
 int v1 = AMD29K_GET_VALUE (instruction, 1);
 if (AMD29K_IS_1 (AMD29K_TYPE_JMP)) {
  return address + ((int) v0);
 } else if (AMD29K_IS_2 (AMD29K_TYPE_REG, AMD29K_TYPE_JMP)) {
  return address + ((int) v1);
 }
 return UT64_MAX;
}
