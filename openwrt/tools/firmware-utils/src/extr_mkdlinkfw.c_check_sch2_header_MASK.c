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
typedef  scalar_t__ uint32_t ;
struct sch2_header {scalar_t__ header_crc32; int header_length; int image_len; scalar_t__ image_crc32; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sch2_header*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static int FUNC4(char *buf, struct sch2_header *header)
{

	int ret = EXIT_FAILURE;

	uint32_t crc32_tmp = header->header_crc32;
	header->header_crc32 = 0;

	if (crc32_tmp == FUNC1(0, (uint8_t *) header, header->header_length)) {
		uint32_t crc32_val;
		FUNC3("Find proper SCH2 header at: 0x%lX!\n",
		       (char *)header - buf);

		crc32_val =
		    FUNC1(0, (uint8_t *) header + header->header_length,
			  header->image_len);
		if (header->image_crc32 == crc32_val) {
			FUNC3("Kernel checksum ok.\n");

			header->header_crc32 = crc32_tmp;
			FUNC2(header);
			ret = EXIT_SUCCESS;
		} else
			FUNC0("Kernel checksum incorrect! Stored: 0x%X Calculated: 0x%X\n", header->image_crc32, crc32_val);

	} else
		FUNC0("SCH2 header checksum incorrect!");

	header->header_crc32 = crc32_tmp;
	return ret;
}