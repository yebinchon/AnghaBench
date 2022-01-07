
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;



 int BWRITERVS_SWIZZLE_SHIFT ;




 char const* wine_dbg_sprintf (char*,char*) ;

__attribute__((used)) static const char *debug_print_swizzle(DWORD arg)
{
    char ret[6];
    unsigned int i;
    DWORD swizzle[4];

    switch (arg)
    {
        case 132:
            return "";
        case 130:
            return ".x";
        case 129:
            return ".y";
        case 128:
            return ".z";
        case 131:
            return ".w";
    }

    swizzle[0] = (arg >> (BWRITERVS_SWIZZLE_SHIFT + 0)) & 0x03;
    swizzle[1] = (arg >> (BWRITERVS_SWIZZLE_SHIFT + 2)) & 0x03;
    swizzle[2] = (arg >> (BWRITERVS_SWIZZLE_SHIFT + 4)) & 0x03;
    swizzle[3] = (arg >> (BWRITERVS_SWIZZLE_SHIFT + 6)) & 0x03;

    ret[0] = '.';
    for (i = 0; i < 4; ++i)
    {
        switch (swizzle[i])
        {
            case 0: ret[1 + i] = 'x'; break;
            case 1: ret[1 + i] = 'y'; break;
            case 2: ret[1 + i] = 'z'; break;
            case 3: ret[1 + i] = 'w'; break;
        }
    }
    ret[5] = '\0';

    return wine_dbg_sprintf("%s", ret);
}
