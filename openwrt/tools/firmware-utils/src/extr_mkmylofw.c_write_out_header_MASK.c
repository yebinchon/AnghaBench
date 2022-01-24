#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct mylo_fw_header {void* flags; void* fwlo; void* fwhi; void* rev; void* sdid; void* svid; void* did; void* vid; void* crc; void* magic; } ;
typedef  int /*<<< orphan*/  hdr ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  fwlo; int /*<<< orphan*/  fwhi; int /*<<< orphan*/  rev; int /*<<< orphan*/  sdid; int /*<<< orphan*/  svid; int /*<<< orphan*/  did; int /*<<< orphan*/  vid; int /*<<< orphan*/  crc; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MYLO_MAGIC_FIRMWARE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ fw_header ; 
 int /*<<< orphan*/  FUNC4 (struct mylo_fw_header*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

int
FUNC6(FILE *outfile, uint32_t *crc)
{
	struct mylo_fw_header hdr;

	FUNC4(&hdr, 0, sizeof(hdr));

	hdr.magic = FUNC1(MYLO_MAGIC_FIRMWARE);
	hdr.crc = FUNC1(fw_header.crc);
	hdr.vid = FUNC0(fw_header.vid);
	hdr.did = FUNC0(fw_header.did);
	hdr.svid = FUNC0(fw_header.svid);
	hdr.sdid = FUNC0(fw_header.sdid);
	hdr.rev = FUNC1(fw_header.rev);
	hdr.fwhi = FUNC1(fw_header.fwhi);
	hdr.fwlo = FUNC1(fw_header.fwlo);
	hdr.flags = FUNC1(fw_header.flags);

	if (FUNC3(outfile, 0, SEEK_SET) != 0) {
		FUNC2(1,"fseek failed on output file");
		return -1;
	}

	return FUNC5(outfile, (uint8_t *)&hdr, sizeof(hdr), crc);
}