
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;


 int single_byte_instr (int,int **) ;

__attribute__((used)) static bool mnem_reti(char const*const*arg, ut16 pc, ut8**out) {
 return single_byte_instr (0x32, out);
}
