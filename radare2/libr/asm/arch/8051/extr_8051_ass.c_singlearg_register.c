
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int register_number (char const*) ;
 int single_byte_instr (int,int**) ;

__attribute__((used)) static bool singlearg_register(ut8 firstbyte, char const*reg, ut8**out) {
 return single_byte_instr (firstbyte | register_number (reg), out);
}
