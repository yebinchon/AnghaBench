
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;



__attribute__((used)) static uint32
gcd(uint32 a, uint32 b)
{
 uint32 c;

 while (a != 0)
 {
  c = a;
  a = b % a;
  b = c;
 }

 return b;
}
