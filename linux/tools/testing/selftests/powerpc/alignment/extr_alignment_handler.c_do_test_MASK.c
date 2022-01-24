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

/* Variables and functions */
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int bufsize ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (void**,int,int) ; 
 int /*<<< orphan*/  FUNC9 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int FUNC11 (void*,void*,int,int,char*) ; 
 int FUNC12 (void*,void*,int,int,void (*) (char*,char*)) ; 

int FUNC13(char *test_name, void (*test_func)(char *, char *))
{
	int offset, width, fd, rc, r;
	void *mem0, *mem1, *ci0, *ci1;

	FUNC10("\tDoing %s:\t", test_name);

	fd = FUNC6("/dev/fb0", O_RDWR);
	if (fd < 0) {
		FUNC10("\n");
		FUNC7("Can't open /dev/fb0 now?");
		return 1;
	}

	ci0 = FUNC4(NULL, bufsize, PROT_WRITE, MAP_SHARED,
		   fd, 0x0);
	ci1 = FUNC4(NULL, bufsize, PROT_WRITE, MAP_SHARED,
		   fd, bufsize);
	if ((ci0 == MAP_FAILED) || (ci1 == MAP_FAILED)) {
		FUNC10("\n");
		FUNC7("mmap failed");
		FUNC0(1);
	}

	rc = FUNC8(&mem0, bufsize, bufsize);
	if (rc) {
		FUNC10("\n");
		return rc;
	}

	rc = FUNC8(&mem1, bufsize, bufsize);
	if (rc) {
		FUNC10("\n");
		FUNC2(mem0);
		return rc;
	}

	rc = 0;
	/* offset = 0 no alignment fault, so skip */
	for (offset = 1; offset < 16; offset++) {
		width = 16; /* vsx == 16 bytes */
		r = 0;

		/* load pattern into memory byte by byte */
		FUNC9(ci0, offset, width);
		FUNC9(mem0, offset, width); // FIXME: remove??
		FUNC3(ci0, mem0, bufsize);
		FUNC3(ci1, mem1, bufsize); /* initialise output to the same */

		/* sanity check */
		FUNC11(mem0, ci0, width, offset, test_name);

		r |= FUNC12(ci1,  ci0,  width, offset, test_func);
		r |= FUNC12(mem1, mem0, width, offset, test_func);
		if (r && !debug) {
			FUNC10("FAILED: Got signal");
			rc = 1;
			break;
		}

		r |= FUNC11(mem1, ci1, width, offset, test_name);
		if (r && !debug) {
			FUNC10("FAILED: Wrong Data");
			rc = 1;
			break;
		}
	}

	if (rc == 0)
		FUNC10("PASSED");

	FUNC10("\n");

	FUNC5(ci0, bufsize);
	FUNC5(ci1, bufsize);
	FUNC2(mem0);
	FUNC2(mem1);
	FUNC1(fd);

	return rc;
}