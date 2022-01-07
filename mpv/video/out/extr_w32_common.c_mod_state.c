
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_w32_state {int input_ctx; } ;


 int MP_KEY_MODIFIER_ALT ;
 int MP_KEY_MODIFIER_CTRL ;
 int MP_KEY_MODIFIER_SHIFT ;
 int VK_LCONTROL ;
 int VK_LMENU ;
 int VK_RCONTROL ;
 int VK_RMENU ;
 int VK_SHIFT ;
 scalar_t__ key_state (int ) ;
 scalar_t__ mp_input_use_alt_gr (int ) ;

__attribute__((used)) static int mod_state(struct vo_w32_state *w32)
{
    int res = 0;


    bool alt_gr = mp_input_use_alt_gr(w32->input_ctx) &&
        key_state(VK_RMENU) && key_state(VK_LCONTROL);

    if (key_state(VK_RCONTROL) || (key_state(VK_LCONTROL) && !alt_gr))
        res |= MP_KEY_MODIFIER_CTRL;
    if (key_state(VK_SHIFT))
        res |= MP_KEY_MODIFIER_SHIFT;
    if (key_state(VK_LMENU) || (key_state(VK_RMENU) && !alt_gr))
        res |= MP_KEY_MODIFIER_ALT;
    return res;
}
