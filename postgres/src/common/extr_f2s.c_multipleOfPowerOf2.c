
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32 ;



__attribute__((used)) static inline bool
multipleOfPowerOf2(const uint32 value, const uint32 p)
{

 return (value & ((1u << p) - 1)) == 0;
}
