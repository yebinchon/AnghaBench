
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int D3DFORMAT ;






 int FIXME (char*,int) ;

__attribute__((used)) static DWORD depth_for_pixelformat(D3DFORMAT format)
{
    switch (format)
    {
    case 131: return 8;
    case 129: return 15;
    case 130: return 16;

    case 128: return 32;
    default:
        FIXME("Unknown D3DFORMAT %d, returning 32 bpp\n", format);
        return 32;
    }
}
