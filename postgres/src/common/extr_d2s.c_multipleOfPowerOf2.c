
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint32 ;


 int const UINT64CONST (int) ;

__attribute__((used)) static inline bool
multipleOfPowerOf2(const uint64 value, const uint32 p)
{

 return (value & ((UINT64CONST(1) << p) - 1)) == 0;
}
