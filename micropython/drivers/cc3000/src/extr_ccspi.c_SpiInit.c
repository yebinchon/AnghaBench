
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void const* PIN_CS ;
 void const* PIN_EN ;
 void const* PIN_IRQ ;
 void* SPI_HANDLE ;

void SpiInit(void *spi, const void *pin_cs, const void *pin_en, const void *pin_irq) {
    SPI_HANDLE = spi;
    PIN_CS = pin_cs;
    PIN_EN = pin_en;
    PIN_IRQ = pin_irq;
}
