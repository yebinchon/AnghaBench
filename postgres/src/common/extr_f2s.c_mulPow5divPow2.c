
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32 ;
typedef int int32 ;


 int * FLOAT_POW5_SPLIT ;
 size_t mulShift (size_t const,int ,int const) ;

__attribute__((used)) static inline uint32
mulPow5divPow2(const uint32 m, const uint32 i, const int32 j)
{
 return mulShift(m, FLOAT_POW5_SPLIT[i], j);
}
