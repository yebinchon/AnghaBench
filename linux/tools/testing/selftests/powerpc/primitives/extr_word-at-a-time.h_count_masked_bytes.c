
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline long count_masked_bytes(long mask)
{

 long a = (0x0ff0001+mask) >> 23;

 return a & mask;
}
