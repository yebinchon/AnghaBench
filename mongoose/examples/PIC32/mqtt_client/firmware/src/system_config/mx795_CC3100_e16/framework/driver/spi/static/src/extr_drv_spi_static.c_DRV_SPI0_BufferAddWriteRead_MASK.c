#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
typedef  size_t int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_ID_1 ; 

int32_t FUNC4(const void * txBuffer, void * rxBuffer, uint32_t size)
{
    bool continueLoop;
    int32_t txcounter = 0;
    int32_t rxcounter = 0;
    do {
        continueLoop = false;
        if(!FUNC3(SPI_ID_1) && txcounter < size)
        {
            FUNC1(SPI_ID_1, ((uint8_t*)txBuffer)[txcounter]);
            txcounter++;
            continueLoop = true;
        }

        while (txcounter != rxcounter)
        {
            while(!FUNC2(SPI_ID_1));
            ((uint8_t*)rxBuffer)[rxcounter] = FUNC0(SPI_ID_1);
            rxcounter++;
            continueLoop = true;
        }
        if (txcounter > rxcounter)
        {
            continueLoop = true;
        }
    }while(continueLoop);
    return txcounter;
}