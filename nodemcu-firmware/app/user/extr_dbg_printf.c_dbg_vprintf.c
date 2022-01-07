
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int kdoprnt (int ,char const*,int ) ;
 int uart0_putc ;

void
dbg_vprintf(const char *fmt, va_list ap)
{
 kdoprnt(uart0_putc, fmt, ap);
}
