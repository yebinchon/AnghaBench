
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BOOL ;



__attribute__((used)) static void pres_bool_from_value(void *out, const void *in, unsigned int count)
{
    unsigned int i;
    const DWORD *in_dword = in;
    BOOL *out_bool = out;

    for (i = 0; i < count; ++i)
        out_bool[i] = !!in_dword[i];
}
