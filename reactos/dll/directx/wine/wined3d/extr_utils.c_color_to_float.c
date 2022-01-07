
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;



__attribute__((used)) static float color_to_float(DWORD color, DWORD size, DWORD offset)
{
    DWORD mask = size < 32 ? (1u << size) - 1 : ~0u;

    if (!size)
        return 1.0f;

    color >>= offset;
    color &= mask;

    return (float)color / (float)mask;
}
