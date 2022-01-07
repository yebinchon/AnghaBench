
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 int Assert (int) ;

__attribute__((used)) static inline uint32
decimalLength(const uint32 v)
{


 Assert(v < 1000000000);
 if (v >= 100000000)
 {
  return 9;
 }
 if (v >= 10000000)
 {
  return 8;
 }
 if (v >= 1000000)
 {
  return 7;
 }
 if (v >= 100000)
 {
  return 6;
 }
 if (v >= 10000)
 {
  return 5;
 }
 if (v >= 1000)
 {
  return 4;
 }
 if (v >= 100)
 {
  return 3;
 }
 if (v >= 10)
 {
  return 2;
 }
 return 1;
}
