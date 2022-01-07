
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int FIXME (char*,int) ;
 int TRUE ;
__attribute__((used)) static DWORD abs_modifier(DWORD mod, BOOL *need_abs)
{
    *need_abs = FALSE;

    switch(mod)
    {
        case 132: return 140;
        case 133: return 140;
        case 138: *need_abs = TRUE; return 138;
        case 137: *need_abs = TRUE; return 137;
        case 131: *need_abs = TRUE; return 131;
        case 130: *need_abs = TRUE; return 130;
        case 136: *need_abs = TRUE; return 136;
        case 129: *need_abs = TRUE; return 129;
        case 128: *need_abs = TRUE; return 128;
        case 134: *need_abs = TRUE; return 134;
        case 135: *need_abs = TRUE; return 135;
        case 140: return 140;
        case 139: return 140;
    }
    FIXME("Unknown modifier %u\n", mod);
    return mod;
}
