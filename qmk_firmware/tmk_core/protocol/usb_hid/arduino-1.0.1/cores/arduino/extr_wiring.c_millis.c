
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int SREG ;
 int cli () ;
 unsigned long timer0_millis ;

unsigned long millis()
{
 unsigned long m;
 uint8_t oldSREG = SREG;



 cli();
 m = timer0_millis;
 SREG = oldSREG;

 return m;
}
