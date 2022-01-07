
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_w32_state {int input_ctx; } ;
typedef int UINT ;


 int MP_INPUT_RELEASE_ALL ;



 int mp_input_put_key (int ,int ) ;

__attribute__((used)) static void handle_key_up(struct vo_w32_state *w32, UINT vkey, UINT scancode)
{
    switch (vkey) {
    case 129:
    case 130:
    case 128:
        break;
    default:


        mp_input_put_key(w32->input_ctx, MP_INPUT_RELEASE_ALL);
    }
}
