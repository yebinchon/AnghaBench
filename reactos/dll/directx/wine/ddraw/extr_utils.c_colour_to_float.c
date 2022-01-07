
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;



__attribute__((used)) static float colour_to_float(DWORD colour, DWORD mask)
{
    if (!mask)
        return 0.0f;
    return (float)(colour & mask) / (float)mask;
}
