
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUX_MU_IO_REG ;
 int AUX_MU_LSR_REG ;
 int get32 (int ) ;
 int put32 (int ,char) ;

void uart_send ( char c )
{
 while(1) {
  if(get32(AUX_MU_LSR_REG)&0x20)
   break;
 }
 put32(AUX_MU_IO_REG,c);
}
