
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;



__attribute__((used)) static inline int
value_in_range_p (int64_t value, int low, int high)
{
  return (value >= low && value <= high) ? 1 : 0;
}
