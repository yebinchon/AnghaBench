
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BannerOutput {int protocol; scalar_t__ length; } ;


 struct BannerOutput* banout_find_proto (struct BannerOutput*,unsigned int) ;

void
banout_end(struct BannerOutput *banout, unsigned proto)
{
    struct BannerOutput *p;

    p = banout_find_proto(banout, proto);
    if (p && p->length) {
        p->protocol |= 0x80000000;
    }
}
