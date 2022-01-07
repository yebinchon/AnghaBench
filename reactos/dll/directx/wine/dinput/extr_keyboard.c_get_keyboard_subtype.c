
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int DIDEVTYPEKEYBOARD_JAPAN106 ;
 int DIDEVTYPEKEYBOARD_PCENH ;
 int FIXME (char*,int,int) ;
 int GetKeyboardType (int) ;

__attribute__((used)) static DWORD get_keyboard_subtype(void)
{
    DWORD kbd_type, kbd_subtype, dev_subtype;
    kbd_type = GetKeyboardType(0);
    kbd_subtype = GetKeyboardType(1);

    if (kbd_type == 4 || (kbd_type == 7 && kbd_subtype == 0))
        dev_subtype = DIDEVTYPEKEYBOARD_PCENH;
    else if (kbd_type == 7 && kbd_subtype == 2)
        dev_subtype = DIDEVTYPEKEYBOARD_JAPAN106;
    else {
        FIXME("Unknown keyboard type=%u, subtype=%u\n", kbd_type, kbd_subtype);
        dev_subtype = DIDEVTYPEKEYBOARD_PCENH;
    }
    return dev_subtype;
}
