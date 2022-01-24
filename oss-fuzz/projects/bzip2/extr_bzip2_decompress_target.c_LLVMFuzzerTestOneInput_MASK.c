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
 int FUNC0 (char*,unsigned int*,char*,size_t,int,int /*<<< orphan*/ ) ; 
 int BZ_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC4(const uint8_t *data, size_t size)
{
    int r, small;
    unsigned int nZ, nOut;

    // See: https://github.com/google/bzip2-rpc/blob/master/unzcrash.c#L39
    nOut = size*2;
    char *outbuf = FUNC3(nOut);
    small = size % 2;
    r = FUNC0(outbuf, &nOut, (char *)data, size,
            small, /*verbosity=*/0);

    if (r != BZ_OK) {
#ifdef __DEBUG__
        fprintf(stdout, "Decompression error: %d\n", r);
#endif
    }
    FUNC2(outbuf);
    return 0;
}