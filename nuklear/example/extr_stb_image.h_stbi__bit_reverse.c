
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STBI_ASSERT (int) ;
 int stbi__bitreverse16 (int) ;

__attribute__((used)) static int stbi__bit_reverse(int v, int bits)
{
   STBI_ASSERT(bits <= 16);


   return stbi__bitreverse16(v) >> (16-bits);
}
