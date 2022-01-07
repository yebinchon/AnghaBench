
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int is_in_cp950_pua(int c1, int c) {
 if ((c1 >= 0xfa && c1 <= 0xfe) || (c1 >= 0x8e && c1 <= 0xa0) ||
   (c1 >= 0x81 && c1 <= 0x8d) || (c1 >= 0xc7 && c1 <= 0xc8)) {
  return (c > 0x39 && c < 0x7f) || (c > 0xa0 && c < 0xff);
 }
 if (c1 == 0xc6) {
  return c > 0xa0 && c < 0xff;
 }
 return 0;
}
