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
typedef  int /*<<< orphan*/  gzFile ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFLEN ; 
 scalar_t__ Z_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

void FUNC11(FILE   *in, gzFile out)
{
    char buf[BUFLEN];
    int len;
    int err;

#ifdef USE_MMAP
    /* Try first compressing with mmap. If mmap fails (minigzip used in a
     * pipe), use the normal fread loop.
     */
    if (gz_compress_mmap(in, out) == Z_OK) return;
#endif
    /* Clear out the contents of buf before reading from the file to avoid
       MemorySanitizer: use-of-uninitialized-value warnings. */
    FUNC9(buf, 0, sizeof(buf));
    for (;;) {
        len = (int)FUNC4(buf, 1, sizeof(buf), in);
        if (FUNC3(in)) {
            FUNC10("fread");
            FUNC1(1);
        }
        if (len == 0) break;

        if (FUNC8(out, buf, (unsigned)len) != len) FUNC0(FUNC7(out, &err));
    }
    FUNC2(in);
    if (FUNC6(out) != Z_OK) FUNC0("failed gzclose");
}