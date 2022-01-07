
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;



__attribute__((used)) static void pres_float_from_bool(void *out, const void *in, unsigned int count)
{
    unsigned int i;
    const BOOL *in_bool = in;
    float *out_float = out;

    for (i = 0; i < count; ++i)
        out_float[i] = !!in_bool[i];
}
