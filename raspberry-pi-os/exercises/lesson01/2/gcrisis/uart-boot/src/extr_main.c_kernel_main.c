
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int BRANCHTO (int ) ;
 int check_head (char*,int) ;
 int uart_init (int) ;
 int uart_recv () ;
 int uart_send (int) ;

void kernel_main(void)
{
 uart_init(115200);
 while (1) {


  char *starth="start";
  check_head(starth,5);
  uint32_t size = uart_recv();
  size|=uart_recv()<<8;
  size|=uart_recv()<<16;
  size|=uart_recv()<<24;

  uart_send((size>>24)&0xff);
  uart_send((size>>16)&0xff);
  uart_send((size>>8)&0xff);
  uart_send(size&0xff);

  uint8_t * kernel = (uint8_t *)0x0;
  while(size-- >0)
  {
   *kernel++ = uart_recv();
  }
     BRANCHTO(0);
 }
 return ;
}
