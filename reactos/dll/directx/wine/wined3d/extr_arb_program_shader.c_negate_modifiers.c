
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int FIXME (char*,int) ;
__attribute__((used)) static DWORD negate_modifiers(DWORD mod, char *extra_char)
{
    *extra_char = ' ';
    switch(mod)
    {
        case 132: return 133;
        case 133: return 132;
        case 138: return 137;
        case 137: return 138;
        case 131: return 130;
        case 130: return 131;
        case 136: *extra_char = '-'; return 136;
        case 129: return 128;
        case 128: return 129;
        case 134: *extra_char = '-'; return 134;
        case 135: *extra_char = '-'; return 135;
        case 140: return 139;
        case 139: return 140;
    }
    FIXME("Unknown modifier %u\n", mod);
    return mod;
}
