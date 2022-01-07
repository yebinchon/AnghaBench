
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;


 int singlearg_reladdr (int,char const* const,int ,int **) ;

__attribute__((used)) static bool mnem_jnz(char const*const*arg, ut16 pc, ut8**out) {
 return singlearg_reladdr (0x70, arg[0], pc, out);
}
