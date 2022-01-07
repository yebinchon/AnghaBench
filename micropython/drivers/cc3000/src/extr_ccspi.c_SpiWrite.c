
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ulSpiState; unsigned char* pTxPacket; unsigned short usTxPacketLength; } ;
struct TYPE_3__ {scalar_t__ (* ReadWlanInterruptPin ) () ;int (* WlanInterruptEnable ) () ;int (* WlanInterruptDisable ) () ;} ;


 scalar_t__ CC3000_BUFFER_MAGIC_NUMBER ;
 int CC3000_TX_BUFFER_SIZE ;
 int CS_HIGH () ;
 int CS_LOW () ;
 int DEBUG_printf (char*,scalar_t__) ;
 unsigned char HI (unsigned short) ;
 unsigned char LO (unsigned short) ;
 scalar_t__ SPI_HEADER_SIZE ;
 int SpiFirstWrite (unsigned char*,unsigned short) ;
 int SpiWriteDataSynchronous (unsigned char*,unsigned short) ;
 unsigned char WRITE ;
 scalar_t__ eSPI_STATE_IDLE ;
 scalar_t__ eSPI_STATE_INITIALIZED ;
 scalar_t__ eSPI_STATE_POWERUP ;
 scalar_t__ eSPI_STATE_WRITE_IRQ ;
 TYPE_2__ sSpiInformation ;
 int stub1 () ;
 int stub2 () ;
 scalar_t__ stub3 () ;
 TYPE_1__ tSLInformation ;
 scalar_t__* wlan_tx_buffer ;

long SpiWrite(unsigned char *pUserBuffer, unsigned short usLength)
{
    DEBUG_printf("SpiWrite %lu\n", sSpiInformation.ulSpiState);

    unsigned char ucPad = 0;



    if(!(usLength & 0x0001)) {
        ucPad++;
    }

    pUserBuffer[0] = WRITE;
    pUserBuffer[1] = HI(usLength + ucPad);
    pUserBuffer[2] = LO(usLength + ucPad);
    pUserBuffer[3] = 0;
    pUserBuffer[4] = 0;

    usLength += (SPI_HEADER_SIZE + ucPad);




    if (wlan_tx_buffer[CC3000_TX_BUFFER_SIZE - 1] != CC3000_BUFFER_MAGIC_NUMBER) {
        while (1);
    }

    if (sSpiInformation.ulSpiState == eSPI_STATE_POWERUP) {
        while (sSpiInformation.ulSpiState != eSPI_STATE_INITIALIZED);
    }

    if (sSpiInformation.ulSpiState == eSPI_STATE_INITIALIZED) {


        SpiFirstWrite(pUserBuffer, usLength);
    } else {




        tSLInformation.WlanInterruptDisable();

        while (sSpiInformation.ulSpiState != eSPI_STATE_IDLE);

        sSpiInformation.ulSpiState = eSPI_STATE_WRITE_IRQ;
        sSpiInformation.pTxPacket = pUserBuffer;
        sSpiInformation.usTxPacketLength = usLength;


        CS_LOW();


        tSLInformation.WlanInterruptEnable();


        if (tSLInformation.ReadWlanInterruptPin() == 0) {
            SpiWriteDataSynchronous(sSpiInformation.pTxPacket, sSpiInformation.usTxPacketLength);

            sSpiInformation.ulSpiState = eSPI_STATE_IDLE;

            CS_HIGH();
        }
    }



    while (eSPI_STATE_IDLE != sSpiInformation.ulSpiState);

    return(0);
}
