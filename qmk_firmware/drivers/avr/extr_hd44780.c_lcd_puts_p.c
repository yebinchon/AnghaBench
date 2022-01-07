
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lcd_putc (char) ;
 char pgm_read_byte (int ) ;

void lcd_puts_p(const char *progmem_s)

{
    register char c;

    while ((c = pgm_read_byte(progmem_s++))) {
        lcd_putc(c);
    }

}
