
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;


 scalar_t__ const pow5Factor (scalar_t__ const) ;

__attribute__((used)) static inline bool
multipleOfPowerOf5(const uint32 value, const uint32 p)
{
 return pow5Factor(value) >= p;
}
