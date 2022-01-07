
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int amd29k_instr_t ;


 int AMD29K_SET_INVALID (int *,int) ;

__attribute__((used)) static void decode_none(amd29k_instr_t* instruction, const ut8* buffer) {

 AMD29K_SET_INVALID (instruction, 0);
 AMD29K_SET_INVALID (instruction, 1);
 AMD29K_SET_INVALID (instruction, 2);
 AMD29K_SET_INVALID (instruction, 3);
 AMD29K_SET_INVALID (instruction, 4);
 AMD29K_SET_INVALID (instruction, 5);
}
