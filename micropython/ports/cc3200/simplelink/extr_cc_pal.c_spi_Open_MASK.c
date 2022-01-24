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
typedef  int Fd_t ;

/* Variables and functions */
 unsigned long LSPI_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  PRCM_LSPI ; 
 int PRCM_RUN_MODE_CLK ; 
 int PRCM_SLP_MODE_CLK ; 
 int SPI_4PIN_MODE ; 
 int SPI_CS_ACTIVEHIGH ; 
 int /*<<< orphan*/  SPI_MODE_MASTER ; 
 unsigned long SPI_RATE_20M ; 
 int /*<<< orphan*/  SPI_SUB_MODE_0 ; 
 int SPI_SW_CTRL_CS ; 
 int SPI_TURBO_OFF ; 
 int SPI_WL_32 ; 
 int g_SpiFd ; 

Fd_t FUNC7(char *ifName, unsigned long flags)
{
    unsigned long ulBase;
    unsigned long ulSpiBitRate = SPI_RATE_20M;

    //NWP master interface
    ulBase = LSPI_BASE;

    //Enable MCSPIA2
    FUNC0(PRCM_LSPI,PRCM_RUN_MODE_CLK | PRCM_SLP_MODE_CLK);

    //Disable Chip Select
    FUNC2(ulBase);

    //Disable SPI Channel
    FUNC4(ulBase);

    // Reset SPI
    FUNC6(ulBase);

    //
    // Configure SPI interface
	//

    FUNC3(ulBase,FUNC1(PRCM_LSPI),
		  	  	  	 ulSpiBitRate,SPI_MODE_MASTER,SPI_SUB_MODE_0,
                     (SPI_SW_CTRL_CS |
                     SPI_4PIN_MODE |
                     SPI_TURBO_OFF |
                     SPI_CS_ACTIVEHIGH |
                     SPI_WL_32));

	FUNC5(ulBase);

    g_SpiFd = 1;
    return g_SpiFd;
}