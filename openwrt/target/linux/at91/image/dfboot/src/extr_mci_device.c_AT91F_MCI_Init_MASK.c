#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int MCI_IDR; } ;
typedef  int /*<<< orphan*/  AT91PS_USART ;

/* Variables and functions */
 int /*<<< orphan*/  AT91C_AIC_PRIOR_HIGHEST ; 
 int /*<<< orphan*/  AT91C_AIC_SRCTYPE_INT_LEVEL_SENSITIVE ; 
 int /*<<< orphan*/  AT91C_BASE_AIC ; 
 scalar_t__ AT91C_BASE_DBGU ; 
 TYPE_1__* AT91C_BASE_MCI ; 
 int /*<<< orphan*/  AT91C_BASE_PDC_MCI ; 
 int /*<<< orphan*/  AT91C_BASE_PIOB ; 
 int /*<<< orphan*/  AT91C_ID_MCI ; 
 scalar_t__ AT91C_INIT_OK ; 
 int /*<<< orphan*/  AT91C_MCI_DTOR_1MEGA_CYCLES ; 
 int /*<<< orphan*/  AT91C_MCI_MR_PDCMODE ; 
 int /*<<< orphan*/  AT91C_MCI_SDCARD_4BITS_SLOTA ; 
 int /*<<< orphan*/  AT91C_PIO_PB7 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AT91F_ASM_MCI_Handler ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  MCI_Device ; 
 int TRUE ; 

int FUNC11(void)
{

///////////////////////////////////////////////////////////////////////////////////////////
//  MCI Init : common to MMC and SDCard
///////////////////////////////////////////////////////////////////////////////////////////

    // Set up PIO SDC_TYPE to switch on MMC/SDCard and not DataFlash Card
	FUNC8(AT91C_BASE_PIOB,AT91C_PIO_PB7);
	FUNC9(AT91C_BASE_PIOB,AT91C_PIO_PB7);
	
	// Init MCI for MMC and SDCard interface
	FUNC3();	
	FUNC4();
	FUNC7(AT91C_BASE_PDC_MCI);

    // Disable all the interrupts
    AT91C_BASE_MCI->MCI_IDR = 0xFFFFFFFF;

	// Init MCI Device Structures
	FUNC2();

	// Configure MCI interrupt 
	FUNC0(AT91C_BASE_AIC,
						 AT91C_ID_MCI,
						 AT91C_AIC_PRIOR_HIGHEST,
						 AT91C_AIC_SRCTYPE_INT_LEVEL_SENSITIVE,
						 AT91F_ASM_MCI_Handler);

	// Enable MCI interrupt
	FUNC1(AT91C_BASE_AIC,AT91C_ID_MCI);

	// Enable Receiver
	FUNC10((AT91PS_USART) AT91C_BASE_DBGU);

	FUNC5(AT91C_BASE_MCI,
						AT91C_MCI_DTOR_1MEGA_CYCLES,
						AT91C_MCI_MR_PDCMODE,			// 15MHz for MCK = 60MHz (CLKDIV = 1)
						AT91C_MCI_SDCARD_4BITS_SLOTA);
	
	if(FUNC6(&MCI_Device) != AT91C_INIT_OK)
		return FALSE;
	else
		return TRUE;

}