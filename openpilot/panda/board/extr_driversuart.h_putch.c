
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ has_external_debug_serial ;
 int injectc (int *,char const) ;
 int putc (int *,char const) ;
 int uart_ring_debug ;

void putch(const char a) {
  if (has_external_debug_serial) {

    while (!putc(&uart_ring_debug, a));

  } else {

    (void)injectc(&uart_ring_debug, a);
  }
}
