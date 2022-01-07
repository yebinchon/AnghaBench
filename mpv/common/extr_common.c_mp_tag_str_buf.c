
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32_t ;


 scalar_t__ mp_isalnum (char) ;
 int mp_snprintf_cat (char*,size_t,char*,char) ;

char *mp_tag_str_buf(char *buf, size_t buf_size, uint32_t tag)
{
    if (buf_size < 1)
        return buf;
    buf[0] = '\0';
    for (int n = 0; n < 4; n++) {
        uint8_t val = (tag >> (n * 8)) & 0xFF;
        if (mp_isalnum(val) || val == '_' || val == ' ') {
            mp_snprintf_cat(buf, buf_size, "%c", val);
        } else {
            mp_snprintf_cat(buf, buf_size, "[%d]", val);
        }
    }
    return buf;
}
