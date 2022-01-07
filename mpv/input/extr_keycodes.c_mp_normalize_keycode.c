
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MP_KEY_BASE ;
 int MP_KEY_MODIFIER_MASK ;
 int MP_KEY_MODIFIER_SHIFT ;

int mp_normalize_keycode(int keycode)
{
    if (keycode <= 0)
        return keycode;
    int code = keycode & ~MP_KEY_MODIFIER_MASK;
    int mod = keycode & MP_KEY_MODIFIER_MASK;




    if (code >= 32 && code < MP_KEY_BASE) {




        if (code >= 'a' && code <= 'z' && (mod & MP_KEY_MODIFIER_SHIFT))
            code &= 0x5F;
        mod &= ~MP_KEY_MODIFIER_SHIFT;
    }
    return code | mod;
}
