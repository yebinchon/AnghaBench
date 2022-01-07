
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 int memcpy (int *,float const*,int) ;

__attribute__((used)) static inline uint32
float_to_bits(const float f)
{
 uint32 bits = 0;

 memcpy(&bits, &f, sizeof(float));
 return bits;
}
