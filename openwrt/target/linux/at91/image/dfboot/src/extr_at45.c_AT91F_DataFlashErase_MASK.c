#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pDataFlashDesc; TYPE_1__* pDevice; } ;
struct TYPE_5__ {unsigned int pages_number; int /*<<< orphan*/  cs; } ;
typedef  int /*<<< orphan*/  AT91S_DataFlashStatus ;
typedef  TYPE_2__* AT91PS_DataFlash ;

/* Variables and functions */
 int /*<<< orphan*/  AT91C_DATAFLASH_ERROR ; 
 int /*<<< orphan*/  AT91C_DATAFLASH_OK ; 
 int /*<<< orphan*/  AT91C_DATAFLASH_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,unsigned int) ; 

AT91S_DataFlashStatus FUNC4(AT91PS_DataFlash pDataFlash)
{
	unsigned int page;
	unsigned int status;

	FUNC2(pDataFlash->pDevice->cs);
 
 	for(page=0; page < pDataFlash->pDevice->pages_number; page++)
	    {
		/* Erase dataflash page */
		if ((page & 0x00FF) == 0)
			FUNC3("\rERA %d/%d", page, pDataFlash->pDevice->pages_number);
		status = FUNC1(pDataFlash, page);
		FUNC0(pDataFlash->pDataFlashDesc, AT91C_DATAFLASH_TIMEOUT);
		if (!status)
			return AT91C_DATAFLASH_ERROR;
   	}

	return AT91C_DATAFLASH_OK;
}