#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* pDevice; int /*<<< orphan*/  pDataFlashDesc; } ;
struct TYPE_8__ {unsigned int pages_size; int pages_number; } ;
typedef  int /*<<< orphan*/  AT91S_DataFlashStatus ;
typedef  TYPE_2__* AT91PS_DataFlash ;

/* Variables and functions */
 int /*<<< orphan*/  AT91C_DATAFLASH_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,unsigned char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  DB_BUF1_PAGE_ERASE_PGM ; 
 int /*<<< orphan*/  DB_BUF1_WRITE ; 
 int /*<<< orphan*/  DB_PAGE_2_BUF1_TRF ; 

__attribute__((used)) static AT91S_DataFlashStatus FUNC5 (
	AT91PS_DataFlash pDataFlash,
	unsigned char *src,
	unsigned int dest,
	unsigned int size)
{
	unsigned int page;
	unsigned int AdrInPage;

	page = dest / (pDataFlash->pDevice->pages_size);
	AdrInPage = dest % (pDataFlash->pDevice->pages_size);

	/* Read the contents of the page in the Sram Buffer */
	FUNC2(pDataFlash, DB_PAGE_2_BUF1_TRF, page);
	FUNC0(pDataFlash->pDataFlashDesc, AT91C_DATAFLASH_TIMEOUT);
	
	/*Update the SRAM buffer */
	FUNC1(pDataFlash, DB_BUF1_WRITE, src, AdrInPage, size);
	FUNC0(pDataFlash->pDataFlashDesc, AT91C_DATAFLASH_TIMEOUT);
	
	/* Erase page if a 128 Mbits device */
	if (pDataFlash->pDevice->pages_number >= 16384)
	{
		FUNC3(pDataFlash, page);
		FUNC0(pDataFlash->pDataFlashDesc, AT91C_DATAFLASH_TIMEOUT);
	}

	/* Rewrite the modified Sram Buffer in the main memory */
	return(FUNC4(pDataFlash, DB_BUF1_PAGE_ERASE_PGM,
	                               (page*pDataFlash->pDevice->pages_size)));
}