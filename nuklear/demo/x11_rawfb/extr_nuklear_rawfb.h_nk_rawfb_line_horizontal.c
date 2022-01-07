
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* pixels; short const pitch; int pl; } ;
struct rawfb_context {TYPE_1__ fb; } ;
struct nk_color {int dummy; } ;
typedef int c ;


 int memcpy (void*,unsigned int*,int) ;
 unsigned int nk_rawfb_color2int (struct nk_color const,int ) ;

__attribute__((used)) static void
nk_rawfb_line_horizontal(const struct rawfb_context *rawfb,
    const short x0, const short y, const short x1, const struct nk_color col)
{



    unsigned int i, n;
    unsigned int c[16];
    unsigned char *pixels = rawfb->fb.pixels;
    unsigned int *ptr;

    pixels += y * rawfb->fb.pitch;
    ptr = (unsigned int *)pixels + x0;

    n = x1 - x0;
    for (i = 0; i < sizeof(c) / sizeof(c[0]); i++)
        c[i] = nk_rawfb_color2int(col, rawfb->fb.pl);

    while (n > 16) {
        memcpy((void *)ptr, c, sizeof(c));
        n -= 16; ptr += 16;
    } for (i = 0; i < n; i++)
        ptr[i] = c[i];
}
