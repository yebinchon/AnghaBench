
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;


 int memcpy (int *,double const*,int) ;

__attribute__((used)) static inline uint64
double_to_bits(const double d)
{
 uint64 bits = 0;

 memcpy(&bits, &d, sizeof(double));
 return bits;
}
