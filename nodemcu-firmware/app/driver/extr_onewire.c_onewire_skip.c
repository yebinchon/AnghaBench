
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int onewire_write (int ,int,int ) ;
 int owDefaultPower ;

void onewire_skip(uint8_t pin)
{
    onewire_write(pin, 0xCC, owDefaultPower);
}
