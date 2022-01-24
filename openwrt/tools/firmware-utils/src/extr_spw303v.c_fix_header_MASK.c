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
typedef  int /*<<< orphan*/  uint32_t ;
struct spw303v_tag {int /*<<< orphan*/  headerCRC; int /*<<< orphan*/  imageCRC; int /*<<< orphan*/  certf1Address; int /*<<< orphan*/  signiture_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMAGETAG_CRC_START ; 
 int /*<<< orphan*/ * IMAGETAG_MAGIC1_TCOM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 void* fake_data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(void *buf)
{
	struct spw303v_tag *tag = buf;
	uint32_t crc;
	/* Replace signature with custom t-com one */
	FUNC3(tag->signiture_1, 0, 20);
	FUNC2(tag->signiture_1, IMAGETAG_MAGIC1_TCOM, FUNC5(IMAGETAG_MAGIC1_TCOM));

	/* Clear cert fields to remove information_* data */
	FUNC3(tag->certf1Address, 0, 74);

	/* replace image crc with modified one */
	crc = FUNC4(*((uint32_t *)&tag->imageCRC));

	crc = FUNC1(FUNC0(crc, fake_data, 64));

	FUNC2(tag->imageCRC, &crc, 4);

	/* Update tag crc */
	crc = FUNC1(FUNC0(IMAGETAG_CRC_START, buf, 236));
	FUNC2(tag->headerCRC, &crc, 4);
}