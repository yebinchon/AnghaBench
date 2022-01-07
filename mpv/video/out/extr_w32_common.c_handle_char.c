
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct vo_w32_state {int input_ctx; } ;


 int decode_utf16 (struct vo_w32_state*,int ) ;
 int mod_state (struct vo_w32_state*) ;
 int mp_input_put_key (int ,int) ;

__attribute__((used)) static bool handle_char(struct vo_w32_state *w32, wchar_t wc)
{
    int c = decode_utf16(w32, wc);

    if (c == 0)
        return 1;
    if (c < 0x20)
        return 0;

    mp_input_put_key(w32->input_ctx, c | mod_state(w32));
    return 1;
}
