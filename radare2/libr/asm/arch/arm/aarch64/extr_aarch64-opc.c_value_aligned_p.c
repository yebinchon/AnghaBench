
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;



__attribute__((used)) static inline int
value_aligned_p (int64_t value, int align)
{
  return (value % align) == 0;
}
