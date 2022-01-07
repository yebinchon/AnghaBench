
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline float
non_negative(float val)
{
 if (val >= 0.0f)
  return val;
 else
  return 0.0f;
}
