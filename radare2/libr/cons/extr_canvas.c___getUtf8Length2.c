
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ r_str_char_fullwidth (char const*,int) ;

__attribute__((used)) static int __getUtf8Length2(const char *s, int n, int left) {
 int i = 0, fullwidths = 0;
 while (n > -1 && i < left && s[i]) {
  if (r_str_char_fullwidth (s + i, left - i)) {
   fullwidths++;
  }
  if ((s[i] & 0xc0) != 0x80) {
   n--;
  }
  i++;
 }
 i -= fullwidths;
 return n == -1 ? i - 1 : i;
}
