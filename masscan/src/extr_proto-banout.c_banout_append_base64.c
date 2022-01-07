
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BannerOutput {int dummy; } ;
struct BannerBase64 {unsigned int temp; unsigned int state; } ;


 int * b64 ;
 int banout_append_char (struct BannerOutput*,unsigned int,int ) ;

void
banout_append_base64(struct BannerOutput *banout, unsigned proto,
                     const void *vpx, size_t length,
                     struct BannerBase64 *base64)
{
    const unsigned char *px = (const unsigned char *)vpx;
    size_t i;
    unsigned x = base64->temp;
    unsigned state = base64->state;

    for (i=0; i<length; i++) {
        switch (state) {
            case 0:
                x = px[i]<<16;
                state++;
                break;
            case 1:
                x |= px[i]<<8;
                state++;
                break;
            case 2:
                x |= px[i];
                state = 0;
                banout_append_char(banout, proto, b64[(x>>18)&0x3F]);
                banout_append_char(banout, proto, b64[(x>>12)&0x3F]);
                banout_append_char(banout, proto, b64[(x>> 6)&0x3F]);
                banout_append_char(banout, proto, b64[(x>> 0)&0x3F]);
        }
    }

    base64->temp = x;
    base64->state = state;
}
