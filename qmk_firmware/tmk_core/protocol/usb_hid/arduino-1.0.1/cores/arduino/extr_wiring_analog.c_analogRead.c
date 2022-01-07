
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ADCH ;
 int ADCL ;
 int ADCSRA ;
 int ADCSRB ;
 int ADMUX ;
 int ADSC ;
 int MUX5 ;
 int analogPinToChannel (int) ;
 int analog_reference ;
 scalar_t__ bit_is_set (int ,int ) ;
 int sbi (int ,int ) ;

int analogRead(uint8_t pin)
{
 uint8_t low, high;
 if (pin >= 14) pin -= 14;
 low = 0;
 high = 0;



 return (high << 8) | low;
}
