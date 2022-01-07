
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mini_uart_send (char) ;

void mini_uart_send_string(char* str)
{
 for (int i = 0; str[i] != '\0'; i ++) {
  mini_uart_send((char)str[i]);
 }
}
