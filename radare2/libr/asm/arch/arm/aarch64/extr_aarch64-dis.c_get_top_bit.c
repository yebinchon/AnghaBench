
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static uint64_t
get_top_bit (uint64_t value)
{
  while ((value & -value) != value)
    value -= value & -value;
  return value;
}
