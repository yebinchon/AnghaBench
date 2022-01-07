
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int r_hex_to_byte (int*,char const) ;

__attribute__((used)) static inline ut8 rgbnum(const char ch1, const char ch2) {
 ut8 r = 0, r2 = 0;
 r_hex_to_byte (&r, ch1);
 r_hex_to_byte (&r2, ch2);
 return r << 4 | r2;
}
