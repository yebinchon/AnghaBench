
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;


 int umul128 (int const,int const,int *) ;

__attribute__((used)) static inline uint64
umulh(const uint64 a, const uint64 b)
{




 uint64 hi;

 umul128(a, b, &hi);
 return hi;
}
