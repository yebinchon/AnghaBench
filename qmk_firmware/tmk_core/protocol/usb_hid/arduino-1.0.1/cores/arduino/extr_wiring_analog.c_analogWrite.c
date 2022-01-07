
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int COM00 ;
 int COM0A1 ;
 int COM0B1 ;
 int COM1A1 ;
 int COM1B1 ;
 int COM21 ;
 int COM2A1 ;
 int COM2B1 ;
 int COM3A1 ;
 int COM3B1 ;
 int COM3C1 ;
 int COM4A0 ;
 int COM4A1 ;
 int COM4B1 ;
 int COM4C1 ;
 int COM4D0 ;
 int COM4D1 ;
 int COM5A1 ;
 int COM5B1 ;
 int COM5C1 ;
 int HIGH ;
 int LOW ;

 int OCR0 ;
 int OCR0A ;
 int OCR0B ;
 int OCR1A ;
 int OCR1B ;
 int OCR2 ;
 int OCR2A ;
 int OCR2B ;
 int OCR3A ;
 int OCR3B ;
 int OCR3C ;
 int OCR4A ;
 int OCR4B ;
 int OCR4C ;
 int OCR4D ;
 int OCR5A ;
 int OCR5B ;
 int OCR5C ;
 int OUTPUT ;
 int TCCR0 ;
 int TCCR0A ;
 int TCCR1A ;
 int TCCR2 ;
 int TCCR2A ;
 int TCCR3A ;
 int TCCR4A ;
 int TCCR4C ;
 int TCCR5A ;
 int cbi (int ,int ) ;
 int digitalPinToTimer (int ) ;
 int digitalWrite (int ,int ) ;
 int pinMode (int ,int ) ;
 int sbi (int ,int ) ;

void analogWrite(uint8_t pin, int val)
{





 pinMode(pin, OUTPUT);
 if (val == 0)
 {
  digitalWrite(pin, LOW);
 }
 else if (val == 255)
 {
  digitalWrite(pin, HIGH);
 }
 else
 {
  switch(digitalPinToTimer(pin))
  {
   case 145:
   default:
    if (val < 128) {
     digitalWrite(pin, LOW);
    } else {
     digitalWrite(pin, HIGH);
    }
  }
 }
}
