
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int U_DATA_REG ;
 int U_FR_REG ;
 int get32 (int ) ;

char uart_recv ()
{

 while(get32(U_FR_REG) & (1<<4)) { }

 return(get32(U_DATA_REG) & 0xFF);
}
