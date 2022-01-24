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
struct trx_header {int /*<<< orphan*/  version; int /*<<< orphan*/  crc32; int /*<<< orphan*/  length; int /*<<< orphan*/  magic; } ;
typedef  struct trx_header uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  hdr ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ TRX_FLAGS_OFFSET ; 
 int TRX_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC3 (struct trx_header*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC6 (int,char**) ; 
 int FUNC7 (int,struct trx_header*,size_t) ; 
 int FUNC8 (int,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ trx_offset ; 
 char* trx_path ; 

__attribute__((used)) static int FUNC10(int argc, char **argv) {
	FILE *trx;
	struct trx_header hdr;
	size_t bytes, length;
	uint8_t buf[1024];
	uint32_t crc32;
	int err = 0;

	if (argc < 3) {
		FUNC2(stderr, "No TRX file passed\n");
		err = -EINVAL;
		goto out;
	}
	trx_path = argv[2];

	optind = 3;
	FUNC6(argc, argv);

	trx = FUNC1(trx_path, "r");
	if (!trx) {
		FUNC2(stderr, "Couldn't open %s\n", trx_path);
		err = -EACCES;
		goto out;
	}

	FUNC4(trx, trx_offset, SEEK_SET);
	bytes = FUNC3(&hdr, 1, sizeof(hdr), trx);
	if (bytes != sizeof(hdr)) {
		FUNC2(stderr, "Couldn't read %s header\n", trx_path);
		err =  -EIO;
		goto err_close;
	}

	if (FUNC5(hdr.magic) != TRX_MAGIC) {
		FUNC2(stderr, "Invalid TRX magic: 0x%08x\n", FUNC5(hdr.magic));
		err =  -EINVAL;
		goto err_close;
	}

	length = FUNC5(hdr.length);
	if (length < sizeof(hdr)) {
		FUNC2(stderr, "Length read from TRX too low (%zu B)\n", length);
		err = -EINVAL;
		goto err_close;
	}

	crc32 = 0xffffffff;
	FUNC4(trx, trx_offset + TRX_FLAGS_OFFSET, SEEK_SET);
	length -= TRX_FLAGS_OFFSET;
	while ((bytes = FUNC3(buf, 1, FUNC8(sizeof(buf), length), trx)) > 0) {
		crc32 = FUNC7(crc32, buf, bytes);
		length -= bytes;
	}

	if (length) {
		FUNC2(stderr, "Couldn't read last %zd B of data from %s\n", length, trx_path);
		err = -EIO;
		goto err_close;
	}

	if (crc32 != FUNC5(hdr.crc32)) {
		FUNC2(stderr, "Invalid data crc32: 0x%08x instead of 0x%08x\n", crc32, FUNC5(hdr.crc32));
		err =  -EINVAL;
		goto err_close;
	}

	FUNC9("Found a valid TRX version %d\n", FUNC5(hdr.version));

err_close:
	FUNC0(trx);
out:
	return err;
}