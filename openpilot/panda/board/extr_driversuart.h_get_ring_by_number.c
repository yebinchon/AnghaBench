
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uart_ring ;


 int uart_ring_debug ;
 int uart_ring_esp_gps ;
 int uart_ring_lin1 ;
 int uart_ring_lin2 ;

uart_ring *get_ring_by_number(int a) {
  uart_ring *ring = ((void*)0);
  switch(a) {
    case 0:
      ring = &uart_ring_debug;
      break;
    case 1:
      ring = &uart_ring_esp_gps;
      break;
    case 2:
      ring = &uart_ring_lin1;
      break;
    case 3:
      ring = &uart_ring_lin2;
      break;
    default:
      ring = ((void*)0);
      break;
  }
  return ring;
}
