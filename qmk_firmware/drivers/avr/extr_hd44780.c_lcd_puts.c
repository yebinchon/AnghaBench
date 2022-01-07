
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lcd_putc (char) ;

void lcd_puts(const char *s)

{
    register char c;

    while ((c = *s++)) {
        lcd_putc(c);
    }

}
