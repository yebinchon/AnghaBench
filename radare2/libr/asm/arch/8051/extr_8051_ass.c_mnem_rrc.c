
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;


 int single_a_arg_instr (int,char const* const,int **) ;

__attribute__((used)) static bool mnem_rrc(char const*const*arg, ut16 pc, ut8**out) {
 return single_a_arg_instr (0x13, arg[0], out);
}
