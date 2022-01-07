
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int amd29k_instr_t ;


 int AMD29K_SET_VALUE (int *,int,int const,int ) ;
 int AMD29K_TYPE_IMM ;
 int AMD29K_TYPE_REG ;

__attribute__((used)) static void decode_convert(amd29k_instr_t* instruction, const ut8* buffer) {

 AMD29K_SET_VALUE (instruction, 0, buffer[1], AMD29K_TYPE_REG);
 AMD29K_SET_VALUE (instruction, 1, buffer[2], AMD29K_TYPE_REG);
 AMD29K_SET_VALUE (instruction, 2, ((buffer[3] & 0x80) >> 7), AMD29K_TYPE_IMM);
 AMD29K_SET_VALUE (instruction, 3, ((buffer[3] & 0x70) >> 4), AMD29K_TYPE_IMM);
 AMD29K_SET_VALUE (instruction, 4, ((buffer[3] & 0x0c) >> 2), AMD29K_TYPE_IMM);
 AMD29K_SET_VALUE (instruction, 5, (buffer[3] & 0x03), AMD29K_TYPE_IMM);
}
