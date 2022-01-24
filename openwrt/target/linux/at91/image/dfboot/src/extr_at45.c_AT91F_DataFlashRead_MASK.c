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
struct TYPE_5__ {int /*<<< orphan*/  cs; } ;
typedef  TYPE_2__* AT91PS_DataFlash ;

/* Variables and functions */
 scalar_t__ AT91C_DATAFLASH_OK ; 
 int /*<<< orphan*/  AT91C_DATAFLASH_TIMEOUT ; 
 scalar_t__ FUNC0 (TYPE_2__*,unsigned long,unsigned char*,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(
	AT91PS_DataFlash pDataFlash,
	unsigned long addr,
	unsigned long size,
	char *buffer)
{
	unsigned long SizeToRead;

	FUNC2(pDataFlash->pDevice->cs);

	if(FUNC1(pDataFlash->pDataFlashDesc, AT91C_DATAFLASH_TIMEOUT) != AT91C_DATAFLASH_OK)
		return -1;

	while (size)
	{
		SizeToRead = (size < 0x8000)? size:0x8000;

		if (FUNC1(pDataFlash->pDataFlashDesc, AT91C_DATAFLASH_TIMEOUT)
		    != AT91C_DATAFLASH_OK)
			return -1;

		if (FUNC0 (pDataFlash, addr, (unsigned char *)buffer,
		                                   SizeToRead) != AT91C_DATAFLASH_OK)
			return -1;

		size -= SizeToRead;
		addr += SizeToRead;
		buffer += SizeToRead;
	}

   	return AT91C_DATAFLASH_OK;
}