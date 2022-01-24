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
struct trx_header {int /*<<< orphan*/ * offset; int /*<<< orphan*/  length; int /*<<< orphan*/  magic; } ;
typedef  int /*<<< orphan*/  hdr ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int TRX_MAGIC ; 
 int TRX_MAX_PARTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC3 (struct trx_header*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,size_t,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char**) ; 
 char** partition ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int trx_offset ; 
 char* trx_path ; 

__attribute__((used)) static int FUNC9(int argc, char **argv) {
	FILE *trx;
	struct trx_header hdr;
	size_t bytes;
	int i;
	int err = 0;

	if (argc < 3) {
		FUNC2(stderr, "No TRX file passed\n");
		err = -EINVAL;
		goto out;
	}
	trx_path = argv[2];

	optind = 3;
	FUNC7(argc, argv);

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

	for (i = 0; i < TRX_MAX_PARTS; i++) {
		size_t length;

		if (!partition[i])
			continue;
		if (!hdr.offset[i]) {
			FUNC8("TRX doesn't contain partition %d, can't extract %s\n", i + 1, partition[i]);
			continue;
		}

		if (i + 1 >= TRX_MAX_PARTS || !hdr.offset[i + 1])
			length = FUNC5(hdr.length) - FUNC5(hdr.offset[i]);
		else
			length = FUNC5(hdr.offset[i + 1]) - FUNC5(hdr.offset[i]);

		FUNC6(trx, trx_offset + FUNC5(hdr.offset[i]), length, partition[i]);
	}

err_close:
	FUNC0(trx);
out:
	return err;
}