
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_w32_state {int input_ctx; } ;
typedef int UINT ;


 int mod_state (struct vo_w32_state*) ;
 int mp_input_put_key (int ,int) ;
 int mp_input_use_media_keys (int ) ;
 int mp_w32_appcmd_to_mpkey (int ) ;

__attribute__((used)) static bool handle_appcommand(struct vo_w32_state *w32, UINT cmd)
{
    if (!mp_input_use_media_keys(w32->input_ctx))
        return 0;
    int mpkey = mp_w32_appcmd_to_mpkey(cmd);
    if (!mpkey)
        return 0;
    mp_input_put_key(w32->input_ctx, mpkey | mod_state(w32));
    return 1;
}
