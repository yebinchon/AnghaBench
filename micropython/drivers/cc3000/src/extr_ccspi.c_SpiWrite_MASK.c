#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ ulSpiState; unsigned char* pTxPacket; unsigned short usTxPacketLength; } ;
struct TYPE_3__ {scalar_t__ (* ReadWlanInterruptPin ) () ;int /*<<< orphan*/  (* WlanInterruptEnable ) () ;int /*<<< orphan*/  (* WlanInterruptDisable ) () ;} ;

/* Variables and functions */
 scalar_t__ CC3000_BUFFER_MAGIC_NUMBER ; 
 int CC3000_TX_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 unsigned char FUNC3 (unsigned short) ; 
 unsigned char FUNC4 (unsigned short) ; 
 scalar_t__ SPI_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned short) ; 
 unsigned char WRITE ; 
 scalar_t__ eSPI_STATE_IDLE ; 
 scalar_t__ eSPI_STATE_INITIALIZED ; 
 scalar_t__ eSPI_STATE_POWERUP ; 
 scalar_t__ eSPI_STATE_WRITE_IRQ ; 
 TYPE_2__ sSpiInformation ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 TYPE_1__ tSLInformation ; 
 scalar_t__* wlan_tx_buffer ; 

long FUNC10(unsigned char *pUserBuffer, unsigned short usLength)
{
    FUNC2("SpiWrite %lu\n", sSpiInformation.ulSpiState);

    unsigned char ucPad = 0;

    // Figure out the total length of the packet in order to figure out if there 
    // is padding or not
    if(!(usLength & 0x0001)) {
        ucPad++;
    }

    pUserBuffer[0] = WRITE;
    pUserBuffer[1] = FUNC3(usLength + ucPad);
    pUserBuffer[2] = FUNC4(usLength + ucPad);
    pUserBuffer[3] = 0;
    pUserBuffer[4] = 0;

    usLength += (SPI_HEADER_SIZE + ucPad);

    // The magic number that resides at the end of the TX/RX buffer (1 byte after the allocated size)
    // for the purpose of detection of the overrun. If the magic number is overriten - buffer overrun
    // occurred - and we will stuck here forever!
    if (wlan_tx_buffer[CC3000_TX_BUFFER_SIZE - 1] != CC3000_BUFFER_MAGIC_NUMBER) {
        while (1);
    }

    if (sSpiInformation.ulSpiState == eSPI_STATE_POWERUP) {
        while (sSpiInformation.ulSpiState != eSPI_STATE_INITIALIZED);
    }

    if (sSpiInformation.ulSpiState == eSPI_STATE_INITIALIZED) {
        // This is time for first TX/RX transactions over SPI:
        // the IRQ is down - so need to send read buffer size command
        FUNC5(pUserBuffer, usLength);
    } else {
        //
        // We need to prevent here race that can occur in case 2 back to back packets are sent to the
        // device, so the state will move to IDLE and once again to not IDLE due to IRQ
        //
        tSLInformation.WlanInterruptDisable();

        while (sSpiInformation.ulSpiState != eSPI_STATE_IDLE);

        sSpiInformation.ulSpiState = eSPI_STATE_WRITE_IRQ;
        sSpiInformation.pTxPacket = pUserBuffer;
        sSpiInformation.usTxPacketLength = usLength;

        // Assert the CS line and wait till SSI IRQ line is active and then initialize write operation
        FUNC1();

        // Re-enable IRQ - if it was not disabled - this is not a problem...
        tSLInformation.WlanInterruptEnable();

        // check for a missing interrupt between the CS assertion and enabling back the interrupts
        if (tSLInformation.ReadWlanInterruptPin() == 0) {
            FUNC6(sSpiInformation.pTxPacket, sSpiInformation.usTxPacketLength);

            sSpiInformation.ulSpiState = eSPI_STATE_IDLE;

            FUNC0();
        }
    }

    // Due to the fact that we are currently implementing a blocking situation
    // here we will wait till end of transaction
    while (eSPI_STATE_IDLE != sSpiInformation.ulSpiState);

    return(0);
}