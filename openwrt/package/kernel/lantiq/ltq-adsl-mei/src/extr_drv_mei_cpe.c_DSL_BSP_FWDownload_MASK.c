#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_6__ {char* address; char* org_address; int size; size_t nCopy; void* type; } ;
typedef  TYPE_2__ smmu_mem_info_t ;
typedef  int /*<<< orphan*/  img_hdr_tmp ;
struct TYPE_8__ {int image_size; int nBar; TYPE_3__* img_hdr; TYPE_2__* adsl_mem_info; } ;
struct TYPE_7__ {unsigned long size; TYPE_1__* page; } ;
struct TYPE_5__ {unsigned long p_offset; } ;
typedef  int DSL_DEV_MeiError_t ;
typedef  int /*<<< orphan*/  DSL_DEV_Device_t ;
typedef  TYPE_3__ ARC_IMG_HDR ;

/* Variables and functions */
 int DSL_DEV_MEI_ERR_FAILURE ; 
 int DSL_DEV_MEI_ERR_SUCCESS ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FREE_ALL ; 
 void* FREE_RELOAD ; 
 void* FREE_SHOWTIME ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (unsigned long) ; 
 int SDRAM_SEGMENT_SIZE ; 
 int XDATA_REGISTER ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int FUNC12 (unsigned long) ; 

DSL_DEV_MeiError_t
FUNC13 (DSL_DEV_Device_t * pDev, const char *buf,
			 unsigned long size, long *loff, long *current_offset)
{
	ARC_IMG_HDR img_hdr_tmp;
	smmu_mem_info_t *adsl_mem_info = FUNC0(pDev)->adsl_mem_info;

	size_t nRead = 0, nCopy = 0;
	char *mem_ptr;
	char *org_mem_ptr = NULL;
	ssize_t retval = -ENOMEM;
	int idx = 0;

        FUNC4("\n");

	if (*loff == 0) {
		if (size < sizeof (img_hdr_tmp)) {
			FUNC5 ("Firmware size is too small!\n");
			return retval;
		}
		FUNC9 ((char *) &img_hdr_tmp, buf, sizeof (img_hdr_tmp));
		// header of image_size and crc are not included.
		FUNC0(pDev)->image_size = FUNC12 (img_hdr_tmp.size) + 8;

		if (FUNC0(pDev)->image_size > 1024 * 1024) {
			FUNC5 ("Firmware size is too large!\n");
			return retval;
		}
		// check if arc is halt
		FUNC7 (pDev);
		FUNC6 (pDev);

		FUNC3 (pDev, FREE_ALL);	//free all

		retval = FUNC2 (pDev,  FUNC0(pDev)->image_size);
		if (retval < 0) {
			FUNC5 ("Error: No memory space left.\n");
			goto error;
		}
		for (idx = 0; idx < retval; idx++) {
			//skip XDATA register
			if (idx == XDATA_REGISTER)
				continue;
			if (idx * SDRAM_SEGMENT_SIZE < FUNC12 (img_hdr_tmp.page[0].p_offset))
				adsl_mem_info[idx].type = FREE_RELOAD;
			else
				adsl_mem_info[idx].type = FREE_SHOWTIME;
		}
		FUNC0(pDev)->nBar = retval;

		FUNC0(pDev)->img_hdr =
			(ARC_IMG_HDR *) adsl_mem_info[0].address;

		org_mem_ptr = FUNC11 (SDRAM_SEGMENT_SIZE, GFP_KERNEL);
		if (org_mem_ptr == NULL) {
			FUNC5 ("kmalloc memory fail!\n");
			retval = -ENOMEM;
			goto error;
		}
		
		if (((unsigned long)org_mem_ptr) & (1023)) {
			/* Pointer not 1k aligned, so free it and allocate a larger chunk
			 * for further alignment.
			 */
			FUNC10(org_mem_ptr);
			org_mem_ptr = FUNC11 (SDRAM_SEGMENT_SIZE + 1024, GFP_KERNEL);
			if (org_mem_ptr == NULL) {
				FUNC5 ("kmalloc memory fail!\n");
				retval = -ENOMEM;
				goto error;
			}
			adsl_mem_info[XDATA_REGISTER].address =
				(char *) ((unsigned long) (org_mem_ptr + 1023) & ~(1024 -1));
		} else {
			adsl_mem_info[XDATA_REGISTER].address = org_mem_ptr;
		}
		
		adsl_mem_info[XDATA_REGISTER].org_address = org_mem_ptr;
		adsl_mem_info[XDATA_REGISTER].size = SDRAM_SEGMENT_SIZE;

		adsl_mem_info[XDATA_REGISTER].type = FREE_RELOAD;
		FUNC4("-> IFX_MEI_BarUpdate()\n");
		FUNC1 (pDev, (FUNC0(pDev)->nBar));
	}
	else if (FUNC0(pDev)-> image_size == 0) {
		FUNC5 ("Error: Firmware size=0! \n");
		goto error;
	}

	nRead = 0;
	while (nRead < size) {
		long offset = ((long) (*loff) + nRead) % SDRAM_SEGMENT_SIZE;
		idx = (((long) (*loff)) + nRead) / SDRAM_SEGMENT_SIZE;
		mem_ptr = (char *) FUNC8 ((unsigned long) (adsl_mem_info[idx].address) + offset);
		if ((size - nRead + offset) > SDRAM_SEGMENT_SIZE)
			nCopy = SDRAM_SEGMENT_SIZE - offset;
		else
			nCopy = size - nRead;
		FUNC9 (mem_ptr, buf + nRead, nCopy);
		for (offset = 0; offset < (nCopy / 4); offset++) {
			((unsigned long *) mem_ptr)[offset] = FUNC12 (((unsigned long *) mem_ptr)[offset]);
		}
		nRead += nCopy;
		adsl_mem_info[idx].nCopy += nCopy;
	}

	*loff += size;
	*current_offset = size;
	return DSL_DEV_MEI_ERR_SUCCESS;
error:
	FUNC3 (pDev, FREE_ALL);
	return DSL_DEV_MEI_ERR_FAILURE;
}