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
typedef  int uint32_t ;
struct trx_header {int version; void* crc32; int /*<<< orphan*/  length; void* magic; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ TRX_FLAGS_OFFSET ; 
 int TRX_MAGIC ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (struct trx_header*,int,int,int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int,size_t) ; 
 int /*<<< orphan*/  stderr ; 
 char* trx_path ; 

__attribute__((used)) static int FUNC8(FILE *trx, struct trx_header *hdr) {
	size_t bytes, length;
	uint8_t buf[1024];
	uint32_t crc32;

	hdr->magic = FUNC0(TRX_MAGIC);
	hdr->version = 1;

	FUNC3(trx, 0, SEEK_SET);
	bytes = FUNC4(hdr, 1, sizeof(struct trx_header), trx);
	if (bytes != sizeof(struct trx_header)) {
		FUNC1(stderr, "Couldn't write TRX header to %s\n", trx_path);
		return -EIO;
	}

	length = FUNC5(hdr->length);

	crc32 = 0xffffffff;
	FUNC3(trx, TRX_FLAGS_OFFSET, SEEK_SET);
	length -= TRX_FLAGS_OFFSET;
	while ((bytes = FUNC2(buf, 1, FUNC7(sizeof(buf), length), trx)) > 0) {
		crc32 = FUNC6(crc32, buf, bytes);
		length -= bytes;
	}
	hdr->crc32 = FUNC0(crc32);

	FUNC3(trx, 0, SEEK_SET);
	bytes = FUNC4(hdr, 1, sizeof(struct trx_header), trx);
	if (bytes != sizeof(struct trx_header)) {
		FUNC1(stderr, "Couldn't write TRX header to %s\n", trx_path);
		return -EIO;
	}

	return 0;
}