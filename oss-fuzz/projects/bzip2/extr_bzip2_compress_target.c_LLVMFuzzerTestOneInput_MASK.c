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

/* Variables and functions */
 int FUNC0 (char*,unsigned int*,char*,size_t,int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char*,unsigned int*,char*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int BZ_OK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (unsigned int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,char*,size_t) ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC7(const uint8_t *data, size_t size)
{
    int r, blockSize100k, workFactor, small;
    unsigned int nZ, nOut;

    /* Copying @julian-seward1's comment from
     * https://github.com/google/oss-fuzz/pull/1887#discussion_r226852388
     *
     * They just reflect the fact that the worst case output size is 101%
     * of the input size + 600 bytes (I assume -- this is now nearly 20
     * years old). Since the buffer is in mallocville, presumably asan
     * will complain if it gets overrun. I doubt that will happen though.
     */
    nZ = size + 600 + (size / 100);
    char *zbuf = FUNC5(nZ);

    blockSize100k = (size % 11) + 1;
    if (blockSize100k > 9) {
        blockSize100k = 9;
    }
    workFactor = size % 251;

    // Choose highest compression (blockSize100k=9)
    r = FUNC0(zbuf, &nZ, (char *)data, size,
            blockSize100k, /*verbosity=*/0, workFactor);
    if (r != BZ_OK) {
#ifdef __DEBUG__
        fprintf(stdout, "Compression error: %d\n", r);
#endif
        FUNC4(zbuf);
        return 0;
    }

    nOut = size*2;
    char *outbuf = FUNC5(nOut);
    small = size % 2;
    r = FUNC1(outbuf, &nOut, zbuf, nZ, small,
            /*verbosity=*/0);
    if (r != BZ_OK) {
#ifdef __DEBUG__
        fprintf(stdout, "Decompression error: %d\n", r);
#endif
        FUNC4(zbuf);
        FUNC4(outbuf);
        return 0;
    }

    FUNC2(nOut == size);
    FUNC2(FUNC6(data, outbuf, size) == 0);
    FUNC4(zbuf);
    FUNC4(outbuf);
    return 0;
}