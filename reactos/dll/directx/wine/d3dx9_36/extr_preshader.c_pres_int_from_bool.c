
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void pres_int_from_bool(void *out, const void *in, unsigned int count)
{
    unsigned int i;
    const float *in_bool = in;
    int *out_int = out;

    for (i = 0; i < count; ++i)
        out_int[i] = !!in_bool[i];
}
