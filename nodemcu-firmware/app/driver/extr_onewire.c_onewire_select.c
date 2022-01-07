
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int onewire_write (int,int const,int ) ;
 int owDefaultPower ;

void onewire_select(uint8_t pin, const uint8_t rom[8])
{
    uint8_t i;

    onewire_write(pin, 0x55, owDefaultPower);

    for (i = 0; i < 8; i++) onewire_write(pin, rom[i], owDefaultPower);
}
