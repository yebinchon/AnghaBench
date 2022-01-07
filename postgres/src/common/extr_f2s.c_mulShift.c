
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint32 ;
typedef int int32 ;


 int Assert (int) ;
 int const PG_UINT32_MAX ;

__attribute__((used)) static inline uint32
mulShift(const uint32 m, const uint64 factor, const int32 shift)
{




 const uint32 factorLo = (uint32) (factor);
 const uint32 factorHi = (uint32) (factor >> 32);
 const uint64 bits0 = (uint64) m * factorLo;
 const uint64 bits1 = (uint64) m * factorHi;

 Assert(shift > 32);
 const uint64 sum = (bits0 >> 32) + bits1;
 const uint64 shiftedSum = sum >> (shift - 32);

 Assert(shiftedSum <= PG_UINT32_MAX);
 return (uint32) shiftedSum;


}
