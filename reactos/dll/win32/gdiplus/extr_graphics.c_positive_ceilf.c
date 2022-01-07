
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int positive_ceilf(float f)
{
    return f - (int)f > 0.0f ? f + 1.0f : f;
}
