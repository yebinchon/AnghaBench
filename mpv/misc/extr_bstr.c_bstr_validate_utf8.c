
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {int len; scalar_t__* start; } ;


 scalar_t__ bstr_decode_utf8 (struct bstr,struct bstr*) ;
 int bstr_parse_utf8_code_length (unsigned int) ;

int bstr_validate_utf8(struct bstr s)
{
    while (s.len) {
        if (bstr_decode_utf8(s, &s) < 0) {

            unsigned int codepoint = (unsigned char)s.start[0];
            int bytes = bstr_parse_utf8_code_length(codepoint);
            if (bytes > 1 && s.len < 6) {

                for (int n = 1; n < bytes; n++) {
                    if (n >= s.len) {

                        return -(bytes - s.len);
                    }
                    int tmp = (unsigned char)s.start[n];
                    if ((tmp & 0xC0) != 0x80)
                        break;
                }
            }
            return -8;
        }
    }
    return 0;
}
