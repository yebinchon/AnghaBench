
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nk_color {unsigned int r; unsigned int g; unsigned int b; unsigned int a; int member_3; int member_2; int member_1; int member_0; } ;
typedef int rawfb_pl ;




 int perror (char*) ;

__attribute__((used)) static struct nk_color
nk_rawfb_int2color(const unsigned int i, rawfb_pl pl)
{
    struct nk_color col = {0,0,0,0};

    switch (pl) {
    case 129:
 col.r = (i >> 24) & 0xff;
 col.g = (i >> 16) & 0xff;
 col.b = (i >> 8) & 0xff;
 col.a = i & 0xff;
 break;
    case 128:
 col.a = (i >> 24) & 0xff;
 col.r = (i >> 16) & 0xff;
 col.g = (i >> 8) & 0xff;
 col.b = i & 0xff;
 break;

    default:
 perror("nk_rawfb_int2color(): Unsupported pixel layout.\n");
 break;
    }
    return col;
}
