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
typedef  int /*<<< orphan*/  uint16_t ;
struct seama_seal_header {int /*<<< orphan*/  metasize; } ;
typedef  int /*<<< orphan*/  hdr ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ entity_idx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC4 (struct seama_seal_header*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,char**) ; 
 char* out_path ; 
 char* seama_path ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC8(int argc, char **argv) {
	FILE *seama;
	FILE *out;
	struct seama_seal_header hdr;
	size_t bytes;
	uint16_t metasize;
	int err = 0;

	if (argc < 3) {
		FUNC3(stderr, "No Seama file passed\n");
		err = -EINVAL;
		goto out;
	}
	seama_path = argv[2];

	optind = 3;
	FUNC7(argc, argv);
	if (entity_idx < 0) {
		FUNC3(stderr, "No entity specified\n");
		err = -EINVAL;
		goto out;
	} else if (!out_path) {
		FUNC3(stderr, "No output file specified\n");
		err = -EINVAL;
		goto out;
	}

	seama = FUNC2(seama_path, "r");
	if (!seama) {
		FUNC3(stderr, "Couldn't open %s\n", seama_path);
		err = -EACCES;
		goto out;
	}

	out = FUNC2(out_path, "w");
	if (!out) {
		FUNC3(stderr, "Couldn't open %s\n", out_path);
		err = -EACCES;
		goto err_close_seama;
	}

	bytes = FUNC4(&hdr, 1, sizeof(hdr), seama);
	if (bytes != sizeof(hdr)) {
		FUNC3(stderr, "Couldn't read %s header\n", seama_path);
		err =  -EIO;
		goto err_close_out;
	}
	metasize = FUNC0(hdr.metasize);

	FUNC5(seama, metasize, SEEK_CUR);

	FUNC6(seama, out);

err_close_out:
	FUNC1(out);
err_close_seama:
	FUNC1(seama);
out:
	return err;
}