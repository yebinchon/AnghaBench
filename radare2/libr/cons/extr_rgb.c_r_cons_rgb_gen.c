
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut8 ;
typedef int st8 ;
typedef int RConsColorMode ;


 scalar_t__ ALPHA_BG ;
 int rgb (scalar_t__,scalar_t__,scalar_t__) ;
 int snprintf (char*,size_t,char*,scalar_t__,...) ;

__attribute__((used)) static void r_cons_rgb_gen(RConsColorMode mode, char *outstr, size_t sz, ut8 attr, ut8 a, ut8 r, ut8 g, ut8 b,
                           st8 id16) {
 ut8 fgbg = (a == ALPHA_BG)? 48: 38;

 if (sz < 4) {
  if (sz > 0) {
   outstr[0] = '\0';
  }
  return;
 }

 size_t i = 2;
 outstr[0] = '\x1b';
 outstr[1] = '[';
 for (; attr; attr &= attr - 1) {
  if (sz < i + 4) {
   outstr[0] = '\0';
   return;
  }
  switch (attr & -attr) {
  case 131: outstr[i] = '1'; break;
  case 130: outstr[i] = '2'; break;
  case 129: outstr[i] = '3'; break;
  case 128: outstr[i] = '4'; break;
  case 132: outstr[i] = '5'; break;
  }
  outstr[i + 1] = ';';
  i += 2;
 }

 int written = -1;
 switch (mode) {
 case 133:
  written = snprintf (outstr + i, sz - i, "%d;5;%dm", fgbg, rgb (r, g, b));
  break;
 case 134:
  written = snprintf (outstr + i, sz - i, "%d;2;%d;%d;%dm", fgbg, r, g, b);
  break;
 case 135: {
  ut8 bright, c;
  fgbg -= 8;
  if (id16 >= 0 && id16 <= 15) {
   c = id16 % 8;
   bright = id16 >= 8 ? 60 : 0;
  } else {
   bright = (r == 0x80 && g == 0x80 && b == 0x80) ? 53
            : (r == 0xff || g == 0xff || b == 0xff) ? 60 : 0;
   if (r == g && g == b) {
    r = (r > 0x7f) ? 1 : 0;
    g = (g > 0x7f) ? 1 : 0;
    b = (b > 0x7f) ? 1 : 0;
   } else {
    ut8 k = (r + g + b) / 3;
    r = (r >= k) ? 1 : 0;
    g = (g >= k) ? 1 : 0;
    b = (b >= k) ? 1 : 0;
   }
   c = (r ? 1 : 0) + (g ? (b ? 6 : 2) : (b ? 4 : 0));
  }
  written = snprintf (outstr + i, sz - i, "%dm", fgbg + bright + c);
  break;
 }
 default:
  break;
 }

 if (written < 0 || written >= sz - i) {
  outstr[0] = '\0';
 }
}
