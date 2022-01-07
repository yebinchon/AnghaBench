
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int int32 ;


 int Assert (int) ;

__attribute__((used)) static inline int32
log10Pow5(const int32 e)
{




 Assert(e >= 0);
 Assert(e <= 2620);
 return (int32) ((((uint32) e) * 732923) >> 20);
}
