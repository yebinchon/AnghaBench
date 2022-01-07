
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TickType_t ;


 int portTICK_TYPE_ENTER_CRITICAL () ;
 int portTICK_TYPE_EXIT_CRITICAL () ;
 int xTickCount ;

TickType_t xTaskGetTickCount( void )
{
TickType_t xTicks;


 portTICK_TYPE_ENTER_CRITICAL();
 {
  xTicks = xTickCount;
 }
 portTICK_TYPE_EXIT_CRITICAL();

 return xTicks;
}
