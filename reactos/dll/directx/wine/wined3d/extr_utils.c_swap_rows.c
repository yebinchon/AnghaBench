
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void swap_rows(float **a, float **b)
{
    float *tmp = *a;

    *a = *b;
    *b = tmp;
}
