
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volatile uint16_t ;


 int ADC ;
 int ADCSRA ;
 int ADEN ;
 int ADSC ;
 int volatile BATTERY_ADC_OFFSET ;
 int volatile BATTERY_ADC_RESOLUTION ;
 int DDRF ;
 int PORTF ;
 int _delay_ms (int) ;

uint16_t battery_voltage(void)
{

    DDRF |= (1<<4);
    PORTF |= (1<<4);

    volatile uint16_t bat;
    ADCSRA |= (1<<ADEN);
    _delay_ms(1);

    ADCSRA |= (1<<ADSC);
    while (ADCSRA & (1<<ADSC)) ;
    bat = ADC;

    ADCSRA &= ~(1<<ADEN);


    DDRF |= (1<<4);
    PORTF &= ~(1<<4);

    return (bat - BATTERY_ADC_OFFSET) * BATTERY_ADC_RESOLUTION;
}
