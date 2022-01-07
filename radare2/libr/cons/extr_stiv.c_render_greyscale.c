
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int (* PrintfCallback ) (char*,int,int) ;



__attribute__((used)) static void render_greyscale(PrintfCallback cb_printf, const ut8 *c, const ut8 *d) {
 int color1, color2, k;
 color1 = (c[0]+c[1]+c[2]) / 3;
 color2 = (d[0]+d[1]+d[2]) / 3;
 k = 231 + ((int)((float)color1/10.3));
 if (k<232) k = 232;
 cb_printf ("\x1b[%d;5;%dm", 48, k);
 k = 231 + ((int)((float)color2/10.3));
 if (k<232) k = 232;
 cb_printf ("\x1b[%d;5;%dm", 38, k);
}
