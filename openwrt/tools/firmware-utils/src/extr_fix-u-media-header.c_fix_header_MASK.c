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
typedef  scalar_t__ uint32_t ;
struct u_media_header {char* ih_name; int ih_UMedia_LoadDefault; void* ih_hcrc; int /*<<< orphan*/  ih_UMedia_imageType; void* ih_UMedia_boardID; void* ih_UMedia_magic; void* ih_magic; } ;
struct TYPE_3__ {int file_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 scalar_t__ IH_MAGIC ; 
 int IH_NMLEN ; 
 int UM_HEADER_LEN ; 
 scalar_t__ UM_MAGIC ; 
 scalar_t__ board_id ; 
 scalar_t__ FUNC2 (unsigned char*,int) ; 
 scalar_t__ factory_defaults ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (scalar_t__) ; 
 TYPE_1__ if_info ; 
 int /*<<< orphan*/  image_type ; 
 char* FUNC5 (int) ; 
 scalar_t__ FUNC6 (void*) ; 
 int /*<<< orphan*/  ofname ; 
 int FUNC7 (TYPE_1__*,char*) ; 
 int FUNC8 (char*,int) ; 

__attribute__((used)) static int FUNC9(void)
{
	int buflen;
	char *buf;
	uint32_t crc, crc_orig;
	struct u_media_header *hdr;
	int ret = EXIT_FAILURE;

	buflen = if_info.file_size;
	if (buflen < sizeof(*hdr)) {
		FUNC1("invalid input file\n");
		return ret;
	}

	buf = FUNC5(buflen);
	if (!buf) {
		FUNC1("no memory for buffer\n");
		goto out;
	}

	ret = FUNC7(&if_info, buf);
	if (ret)
		goto out_free_buf;

	hdr = (struct u_media_header *) buf;
	if (FUNC6(hdr->ih_magic) != IH_MAGIC) {
		FUNC1("invalid input file, bad magic\n");
		goto out_free_buf;
	}

	/* verify header CRC */
	crc_orig = FUNC6(hdr->ih_hcrc);
	hdr->ih_hcrc = 0;
	crc = FUNC2((unsigned char *)hdr, sizeof(*hdr));
	if (crc != crc_orig) {
		FUNC1("invalid input file, bad header CRC\n");
		goto out_free_buf;
	}

	hdr->ih_name[IH_NMLEN - UM_HEADER_LEN - 1] = '\0';

	/* set U-Media specific fields */
	hdr->ih_UMedia_magic = FUNC4(UM_MAGIC);
	hdr->ih_UMedia_boardID = FUNC4(board_id);
	hdr->ih_UMedia_imageType = image_type;
	hdr->ih_UMedia_LoadDefault = (factory_defaults) ? 1 : 0;

	/* update header CRC */
	crc = FUNC2((unsigned char *)hdr, sizeof(*hdr));
	hdr->ih_hcrc = FUNC4(crc);

	ret = FUNC8(buf, buflen);
	if (ret)
		goto out_free_buf;

	FUNC0("U-Media header fixed in \"%s\"", ofname);

	ret = EXIT_SUCCESS;

out_free_buf:
	FUNC3(buf);
out:
	return ret;
}