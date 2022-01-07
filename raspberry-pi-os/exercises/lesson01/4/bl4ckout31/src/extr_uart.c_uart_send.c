
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int U_DATA_REG ;
 int U_FR_REG ;
 int get32 (int ) ;
 int put32 (int ,char) ;

void uart_send (char c)
{

 while(get32(U_FR_REG) & (1<<5)) { }

 put32(U_DATA_REG, c);
}
