
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;


 int MAX_BAUD ;
 int OFS_DATA_FORMAT ;
 int OFS_DIVISOR_LSB ;
 int OFS_DIVISOR_MSB ;
 int OFS_INTR_ENABLE ;
 int OFS_LINE_CONTROL ;
 int UART16550_WRITE (int ,int) ;

void Uart16550Init(uint32 baud, uint8 data, uint8 parity, uint8 stop)
{

    UART16550_WRITE(OFS_INTR_ENABLE, 0);


    {
        uint32 divisor;


        UART16550_WRITE(OFS_LINE_CONTROL, 0x80);


        divisor = MAX_BAUD / baud;
        UART16550_WRITE(OFS_DIVISOR_LSB, divisor & 0xff);
        UART16550_WRITE(OFS_DIVISOR_MSB, (divisor & 0xff00)>>8);


        UART16550_WRITE(OFS_LINE_CONTROL, 0x0);
    }


    UART16550_WRITE(OFS_DATA_FORMAT, data | parity | stop);
}
