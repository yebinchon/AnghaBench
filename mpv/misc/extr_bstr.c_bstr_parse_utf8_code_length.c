
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_log2 (unsigned char) ;

int bstr_parse_utf8_code_length(unsigned char b)
{
    if (b < 128)
        return 1;
    int bytes = 7 - mp_log2(b ^ 255);
    return (bytes >= 2 && bytes <= 4) ? bytes : -1;
}
