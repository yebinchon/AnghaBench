
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;


 int ADCH ;
 int ADCL ;
 int ADCSRA ;
 int ADCSRB ;
 int ADC_PRESCALER ;
 int ADEN ;
 int ADHSM ;
 int ADMUX ;
 int ADSC ;
 int aref ;

int16_t adc_read(uint8_t mux) {



    uint8_t low;

    ADCSRA = (1 << ADEN) | ADC_PRESCALER;
    ADCSRB = (1 << ADHSM) | (mux & 0x20);
    ADMUX = aref | (mux & 0x1F);
    ADCSRA = (1 << ADEN) | ADC_PRESCALER | (1 << ADSC);
    while (ADCSRA & (1 << ADSC))
        ;
    low = ADCL;
    return (ADCH << 8) | low;

}
