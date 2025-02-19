
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nk_color {int r; int g; int b; unsigned int a; } ;
typedef int rawfb_pl ;




 int perror (char*) ;

__attribute__((used)) static unsigned int
nk_rawfb_color2int(const struct nk_color c, rawfb_pl pl)
{
    unsigned int res = 0;

    switch (pl) {
    case 129:
 res |= c.r << 24;
 res |= c.g << 16;
 res |= c.b << 8;
 res |= c.a;
 break;
    case 128:
 res |= c.a << 24;
 res |= c.r << 16;
 res |= c.g << 8;
 res |= c.b;
 break;

    default:
 perror("nk_rawfb_color2int(): Unsupported pixel layout.\n");
 break;
    }
    return (res);
}
