
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void clamp_step_index(int* stepIndex)
{
    if (*stepIndex < 0 ) *stepIndex = 0;
    if (*stepIndex > 88) *stepIndex = 88;
}
