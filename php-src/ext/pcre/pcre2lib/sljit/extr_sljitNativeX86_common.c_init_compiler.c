
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sljit_uw ;
typedef int sljit_s32 ;


 int* sse2_buffer ;
 scalar_t__ sse2_data ;

__attribute__((used)) static void init_compiler(void)
{

 sse2_buffer = (sljit_s32*)(((sljit_uw)sse2_data + 15) & ~0xf);


 sse2_buffer[0] = 0x80000000;
 sse2_buffer[4] = 0x7fffffff;

 sse2_buffer[8] = 0;
 sse2_buffer[9] = 0x80000000;
 sse2_buffer[12] = 0xffffffff;
 sse2_buffer[13] = 0x7fffffff;
}
