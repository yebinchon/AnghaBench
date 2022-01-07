
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_w32_state {int input_ctx; } ;
typedef int UINT ;
typedef int BYTE ;


 int GetKeyboardState (int*) ;
 size_t VK_CONTROL ;
 size_t VK_LCONTROL ;
 size_t VK_LMENU ;
 size_t VK_MENU ;
 size_t VK_RCONTROL ;
 size_t VK_RMENU ;
 int decode_utf16 (struct vo_w32_state*,int) ;
 int mp_input_use_alt_gr (int ) ;
 int to_unicode (int ,int ,int*) ;

__attribute__((used)) static int decode_key(struct vo_w32_state *w32, UINT vkey, UINT scancode)
{
    BYTE keys[256];
    GetKeyboardState(keys);




    if ((keys[VK_RMENU] & 0x80) && (keys[VK_LCONTROL] & 0x80) &&
        !mp_input_use_alt_gr(w32->input_ctx))
    {
        keys[VK_RMENU] = keys[VK_LCONTROL] = 0;
        keys[VK_MENU] = keys[VK_LMENU];
        keys[VK_CONTROL] = keys[VK_RCONTROL];
    }

    int c = to_unicode(vkey, scancode, keys);




    if (c < 0x20 && (keys[VK_MENU] & 0x80)) {
        keys[VK_LMENU] = keys[VK_RMENU] = keys[VK_MENU] = 0;
        c = to_unicode(vkey, scancode, keys);
    }
    if (c < 0x20 && (keys[VK_CONTROL] & 0x80)) {
        keys[VK_LCONTROL] = keys[VK_RCONTROL] = keys[VK_CONTROL] = 0;
        c = to_unicode(vkey, scancode, keys);
    }
    if (c < 0x20)
        return 0;


    if (c < 0x10000)
        return decode_utf16(w32, c);
    return c;
}
