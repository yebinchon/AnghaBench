
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int oled_advance_page (int) ;
 int oled_write (char const*,int) ;

void oled_write_ln(const char *data, bool invert) {
    oled_write(data, invert);
    oled_advance_page(1);
}
