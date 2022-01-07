
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;


 int singlearg_bit (int,char const* const,int **) ;

__attribute__((used)) static bool mnem_mov_c(char const*const*arg, ut16 pc, ut8**out) {
 return singlearg_bit (0xa2, arg[1], out);
}
