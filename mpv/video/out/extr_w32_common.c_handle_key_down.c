
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_w32_state {int input_ctx; } ;
typedef int UINT ;


 int KF_EXTENDED ;
 int KF_REPEAT ;
 int MP_KEY_STATE_DOWN ;
 int decode_key (struct vo_w32_state*,int,int) ;
 int mod_state (struct vo_w32_state*) ;
 int mp_input_put_key (int ,int) ;
 int mp_w32_vkey_to_mpkey (int,int) ;

__attribute__((used)) static void handle_key_down(struct vo_w32_state *w32, UINT vkey, UINT scancode)
{

    if (scancode & KF_REPEAT)
        return;

    int mpkey = mp_w32_vkey_to_mpkey(vkey, scancode & KF_EXTENDED);
    if (!mpkey) {
        mpkey = decode_key(w32, vkey, scancode & (0xff | KF_EXTENDED));
        if (!mpkey)
            return;
    }

    mp_input_put_key(w32->input_ctx, mpkey | mod_state(w32) | MP_KEY_STATE_DOWN);
}
