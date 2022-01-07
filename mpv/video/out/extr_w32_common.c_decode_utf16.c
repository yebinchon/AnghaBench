
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct vo_w32_state {int high_surrogate; } ;


 scalar_t__ IS_HIGH_SURROGATE (int) ;
 scalar_t__ IS_LOW_SURROGATE (int) ;
 int MP_ERR (struct vo_w32_state*,char*) ;
 int decode_surrogate_pair (int,int) ;

__attribute__((used)) static int decode_utf16(struct vo_w32_state *w32, wchar_t c)
{

    if (IS_HIGH_SURROGATE(c)) {
        w32->high_surrogate = c;
        return 0;
    }
    if (IS_LOW_SURROGATE(c)) {
        if (!w32->high_surrogate) {
            MP_ERR(w32, "Invalid UTF-16 input\n");
            return 0;
        }
        int codepoint = decode_surrogate_pair(w32->high_surrogate, c);
        w32->high_surrogate = 0;
        return codepoint;
    }
    if (w32->high_surrogate != 0) {
        w32->high_surrogate = 0;
        MP_ERR(w32, "Invalid UTF-16 input\n");
        return 0;
    }

    return c;
}
