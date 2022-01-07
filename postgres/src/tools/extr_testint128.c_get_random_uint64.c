
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;


 int random () ;

__attribute__((used)) static uint64
get_random_uint64(void)
{
 uint64 x;

 x = (uint64) (random() & 0xFFFF) << 48;
 x |= (uint64) (random() & 0xFFFF) << 32;
 x |= (uint64) (random() & 0xFFFF) << 16;
 x |= (uint64) (random() & 0xFFFF);
 return x;
}
