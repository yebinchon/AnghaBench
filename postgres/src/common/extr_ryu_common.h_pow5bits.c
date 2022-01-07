
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int int32 ;


 int Assert (int) ;

__attribute__((used)) static inline uint32
pow5bits(const int32 e)
{







 Assert(e >= 0);
 Assert(e <= 3528);
 return ((((uint32) e) * 1217359) >> 19) + 1;
}
