
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BannerOutput {scalar_t__ length; } ;


 int banout_append_char (struct BannerOutput*,unsigned int,char) ;
 struct BannerOutput* banout_find_proto (struct BannerOutput*,unsigned int) ;

void
banout_newline(struct BannerOutput *banout, unsigned proto)
{
    struct BannerOutput *p;

    p = banout_find_proto(banout, proto);
    if (p && p->length) {
        banout_append_char(banout, proto, '\n');
    }
}
