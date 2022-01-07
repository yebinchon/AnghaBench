
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int fons__hashint(unsigned int a)
{
 a += ~(a<<15);
 a ^= (a>>10);
 a += (a<<3);
 a ^= (a>>6);
 a += ~(a<<11);
 a ^= (a>>16);
 return a;
}
