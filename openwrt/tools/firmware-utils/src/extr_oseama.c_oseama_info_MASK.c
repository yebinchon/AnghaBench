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
struct seama_seal_header {int /*<<< orphan*/  magic; int /*<<< orphan*/  imagesize; int /*<<< orphan*/  metasize; } ;
typedef  struct seama_seal_header uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  hdr ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int EIO ; 
 int SEAMA_MAGIC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ entity_idx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC5 (struct seama_seal_header*,int,int,int /*<<< orphan*/ *) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,char**) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 char* seama_path ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(int argc, char **argv) {
	FILE *seama;
	struct seama_seal_header hdr;
	size_t bytes;
	uint16_t metasize;
	uint32_t imagesize;
	uint8_t buf[1024];
	int err = 0;

	if (argc < 3) {
		FUNC4(stderr, "No Seama file passed\n");
		err = -EINVAL;
		goto out;
	}
	seama_path = argv[2];

	optind = 3;
	FUNC7(argc, argv);

	seama = FUNC3(seama_path, "r");
	if (!seama) {
		FUNC4(stderr, "Couldn't open %s\n", seama_path);
		err = -EACCES;
		goto out;
	}

	bytes = FUNC5(&hdr, 1, sizeof(hdr), seama);
	if (bytes != sizeof(hdr)) {
		FUNC4(stderr, "Couldn't read %s header\n", seama_path);
		err =  -EIO;
		goto err_close;
	}
	metasize = FUNC0(hdr.metasize);
	imagesize = FUNC1(hdr.imagesize);

	if (FUNC1(hdr.magic) != SEAMA_MAGIC) {
		FUNC4(stderr, "Invalid Seama magic: 0x%08x\n", FUNC1(hdr.magic));
		err =  -EINVAL;
		goto err_close;
	}

	if (metasize >= sizeof(buf)) {
		FUNC4(stderr, "Too small buffer (%zu B) to read all meta info (%d B)\n", sizeof(buf), metasize);
		err =  -EINVAL;
		goto err_close;
	}

	if (imagesize) {
		FUNC4(stderr, "Invalid Seama image size: 0x%08x (should be 0)\n", imagesize);
		err =  -EINVAL;
		goto err_close;
	}

	bytes = FUNC5(buf, 1, metasize, seama);
	if (bytes != metasize) {
		FUNC4(stderr, "Couldn't read %d B of meta\n", metasize);
		err =  -EIO;
		goto err_close;
	}

	if (entity_idx < 0) {
		char *end, *tmp;

		FUNC8("Meta size:\t%d\n", metasize);
		FUNC8("Image size:\t%d\n", imagesize);

		end = (char *)&buf[metasize - 1];
		*end = '\0';
		for (tmp = (char *)buf; tmp < end && FUNC9(tmp); tmp += FUNC9(tmp) + 1) {
			FUNC8("Meta entry:\t%s\n", tmp);
		}
	}

	FUNC6(seama);

err_close:
	FUNC2(seama);
out:
	return err;
}