
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;


 int UINT64CONST (int) ;
 int umulh (int const,int ) ;

__attribute__((used)) static inline uint64
div10(const uint64 x)
{
 return umulh(x, UINT64CONST(0xCCCCCCCCCCCCCCCD)) >> 3;
}
