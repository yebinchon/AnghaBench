
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delay (int) ;
 int uart_send (char) ;

void process(char *array) {
  while (1) {
    for (int i = 0; i < 5; i++) {
      uart_send(array[i]);
      delay(100000);
    }
  }
}
