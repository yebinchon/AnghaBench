
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BannerOutput {int dummy; } ;


 int ntp_priv (unsigned char const*,unsigned int,struct BannerOutput*,unsigned int*) ;

__attribute__((used)) static void
ntp_v2_parse(const unsigned char *px,
           unsigned length,
           struct BannerOutput *banout,
           unsigned *request_id)
{
    unsigned mode;

    if (length < 4)
        return;


    if ((px[0]>>7) != 1)
        return;


    if (((px[0]>>3)&7) != 2)
        return;


    mode = px[0] & 7;
    switch (mode) {
        case 6:
            break;
        case 7:
            ntp_priv(px, length, banout, request_id);
            break;
    }



}
