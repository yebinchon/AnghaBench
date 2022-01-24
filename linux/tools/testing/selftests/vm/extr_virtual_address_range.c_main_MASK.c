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
 int MAP_ANONYMOUS ; 
 int /*<<< orphan*/  MAP_CHUNK_SIZE ; 
 char* MAP_FAILED ; 
 int MAP_PRIVATE ; 
 int NR_CHUNKS_HIGH ; 
 int NR_CHUNKS_LOW ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 char* FUNC0 () ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 () ; 

int FUNC5(int argc, char *argv[])
{
	char *ptr[NR_CHUNKS_LOW];
	char *hptr[NR_CHUNKS_HIGH];
	char *hint;
	unsigned long i, lchunks, hchunks;

	for (i = 0; i < NR_CHUNKS_LOW; i++) {
		ptr[i] = FUNC1(NULL, MAP_CHUNK_SIZE, PROT_READ | PROT_WRITE,
					MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

		if (ptr[i] == MAP_FAILED) {
			if (FUNC4())
				return 1;
			break;
		}

		if (FUNC3(ptr[i], 0))
			return 1;
	}
	lchunks = i;

	for (i = 0; i < NR_CHUNKS_HIGH; i++) {
		hint = FUNC0();
		hptr[i] = FUNC1(hint, MAP_CHUNK_SIZE, PROT_READ | PROT_WRITE,
					MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

		if (hptr[i] == MAP_FAILED)
			break;

		if (FUNC3(hptr[i], 1))
			return 1;
	}
	hchunks = i;

	for (i = 0; i < lchunks; i++)
		FUNC2(ptr[i], MAP_CHUNK_SIZE);

	for (i = 0; i < hchunks; i++)
		FUNC2(hptr[i], MAP_CHUNK_SIZE);

	return 0;
}