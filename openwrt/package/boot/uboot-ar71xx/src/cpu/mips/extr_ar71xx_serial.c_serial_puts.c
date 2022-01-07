
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int serial_putc (int ) ;

void serial_puts (const char *s)
{
 while (*s)
 {
  serial_putc (*s++);
 }
}
