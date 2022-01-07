
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BannerOutput {int dummy; } ;


 int banout_append_char (struct BannerOutput*,unsigned int,unsigned int) ;

void
banout_append_unicode(struct BannerOutput *banout, unsigned proto, unsigned c)
{
    if (c & ~0xFFFF) {
        unsigned c2;
        c2 = 0xF0 | ((c>>18)&0x03);
        banout_append_char(banout, proto, c2);
        c2 = 0x80 | ((c>>12)&0x3F);
        banout_append_char(banout, proto, c2);
        c2 = 0x80 | ((c>> 6)&0x3F);
        banout_append_char(banout, proto, c2);
        c2 = 0x80 | ((c>> 0)&0x3F);
        banout_append_char(banout, proto, c2);
    } else if (c & ~0x7FF) {
        unsigned c2;
        c2 = 0xE0 | ((c>>12)&0x0F);
        banout_append_char(banout, proto, c2);
        c2 = 0x80 | ((c>> 6)&0x3F);
        banout_append_char(banout, proto, c2);
        c2 = 0x80 | ((c>> 0)&0x3F);
        banout_append_char(banout, proto, c2);
    } else if (c & ~0x7f) {
        unsigned c2;
        c2 = 0xc0 | ((c>> 6)&0x1F);
        banout_append_char(banout, proto, c2);
        c2 = 0x80 | ((c>> 0)&0x3F);
        banout_append_char(banout, proto, c2);
    } else
        banout_append_char(banout, proto, c);
}
