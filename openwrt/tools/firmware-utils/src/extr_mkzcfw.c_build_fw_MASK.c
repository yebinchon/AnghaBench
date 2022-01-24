#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct fw_tail {void* crc; void* hw_id; } ;
struct fw_header {void* length; void* magic; } ;
struct TYPE_6__ {int /*<<< orphan*/  hw_id; } ;
struct TYPE_5__ {int file_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int MAGIC_FIRMWARE ; 
 int MAGIC_KERNEL ; 
 int MAGIC_ROOTFS ; 
 TYPE_4__* board ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__ kernel_info ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_1__*,char*) ; 
 TYPE_1__ rootfs_info ; 
 int FUNC8 (char*,int) ; 

__attribute__((used)) static int FUNC9(void)
{
	int buflen;
	char *buf;
	char *p;
	int ret = EXIT_FAILURE;
	int writelen = 0;
	uint32_t crc;
	struct fw_header *hdr;
	struct fw_tail *tail;

	buflen = 3 * sizeof(struct fw_header) +
		 kernel_info.file_size + rootfs_info.file_size +
		 3 * sizeof(struct fw_tail);

	buf = FUNC5(buflen);
	if (!buf) {
		FUNC0("no memory for buffer\n");
		goto out;
	}

	p = buf;
	FUNC6(p, 0, buflen);

	/* fill firmware header */
	hdr = (struct fw_header *) p;
	hdr->magic = FUNC2(MAGIC_FIRMWARE);
	hdr->length = FUNC2(buflen - sizeof(struct fw_header));
	p += sizeof(struct fw_header);

	/* fill kernel block header */
	hdr = (struct fw_header *) p;
	hdr->magic = FUNC2(MAGIC_KERNEL);
	hdr->length = FUNC2(kernel_info.file_size +
				   sizeof(struct fw_tail));
	p += sizeof(struct fw_header);

	/* read kernel data */
	ret = FUNC7(&kernel_info, p);
	if (ret)
		goto out_free_buf;

	/* fill firmware tail */
	tail = (struct fw_tail *) (p + kernel_info.file_size);
	tail->hw_id = FUNC1(board->hw_id);
	tail->crc = FUNC1(FUNC3(p, kernel_info.file_size +
				 	   sizeof(struct fw_tail) - 4));

	p += kernel_info.file_size + sizeof(struct fw_tail);

	/* fill rootfs block header */
	hdr = (struct fw_header *) p;
	hdr->magic = FUNC2(MAGIC_ROOTFS);
	hdr->length = FUNC2(rootfs_info.file_size +
				   sizeof(struct fw_tail));
	p += sizeof(struct fw_header);

	/* read rootfs data */
	ret = FUNC7(&rootfs_info, p);
	if (ret)
		goto out_free_buf;

	/* fill firmware tail */
	tail = (struct fw_tail *) (p + rootfs_info.file_size);
	tail->hw_id = FUNC1(board->hw_id);
	tail->crc = FUNC1(FUNC3(p, rootfs_info.file_size +
				 	   sizeof(struct fw_tail) - 4));

	p += rootfs_info.file_size + sizeof(struct fw_tail);

	/* fill firmware tail */
	tail = (struct fw_tail *) p;
	tail->hw_id = FUNC1(board->hw_id);
	tail->crc = FUNC1(FUNC3(buf + sizeof(struct fw_header),
				 buflen - sizeof(struct fw_header) - 4));

	ret = FUNC8(buf, buflen);
	if (ret)
		goto out_free_buf;

	ret = EXIT_SUCCESS;

 out_free_buf:
	FUNC4(buf);
 out:
	return ret;
}