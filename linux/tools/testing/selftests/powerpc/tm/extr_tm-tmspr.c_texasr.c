
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int SPRN_TEXASR ;
 int TEXASR_FS ;
 int mfspr (int ) ;
 unsigned long num_loops ;
 scalar_t__ passed ;

void texasr(void *in)
{
 unsigned long i;
 uint64_t result = 0;

 for (i = 0; i < num_loops; i++) {
  asm __volatile__(
   "tbegin.;"
   "beq    3f ;"
   "tabort. 0 ;"
   "tend.;"


   "3: ;"
   ::: "memory");


                result = mfspr(SPRN_TEXASR);
  if ((result & TEXASR_FS) == 0) {
   passed = 0;
   return;
  }
 }
 return;
}
