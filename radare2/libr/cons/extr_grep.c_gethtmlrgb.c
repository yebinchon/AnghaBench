
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 scalar_t__ r_cons_rgb_parse (char const*,int*,int*,int*,int ) ;
 int sprintf (char*,char*,int,int,int) ;

__attribute__((used)) static const char *gethtmlrgb(const char *str) {
 ut8 r = 0, g = 0, b = 0;
 if (r_cons_rgb_parse (str, &r, &g, &b, 0)) {
  static char buf[32];
  sprintf (buf, "#%02x%02x%02x", r, g, b);
  return buf;
 }
 return "";
}
