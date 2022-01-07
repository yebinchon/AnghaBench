
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;



__attribute__((used)) static unsigned LZ4_isLittleEndian(void)
{
 const union { ut32 u; ut8 c[4]; } one = { 1 };
 return one.c[0];
}
