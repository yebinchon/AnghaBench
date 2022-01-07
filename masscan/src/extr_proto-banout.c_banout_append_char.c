
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BannerOutput {int dummy; } ;


 int banout_append (struct BannerOutput*,unsigned int,char*,int) ;

void
banout_append_char(struct BannerOutput *banout, unsigned proto, int c)
{
    char cc = (char)c;
    banout_append(banout, proto, &cc, 1);
}
