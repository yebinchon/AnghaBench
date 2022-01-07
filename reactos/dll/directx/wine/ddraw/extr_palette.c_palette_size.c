
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;







__attribute__((used)) static unsigned int palette_size(DWORD flags)
{
    switch (flags & (131 | 130 | 129 | 128))
    {
        case 131:
            return 2;
        case 130:
            return 4;
        case 129:
            return 16;
        case 128:
            return 256;
        default:
            return ~0u;
    }
}
