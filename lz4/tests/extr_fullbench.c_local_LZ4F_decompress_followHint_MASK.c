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
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,char*,size_t*,char const*,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (size_t const) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  g_dCtx ; 

__attribute__((used)) static int FUNC5(const char* src, char* dst, int srcSize, int dstSize)
{
    size_t totalInSize = (size_t)srcSize;
    size_t maxOutSize = (size_t)dstSize;

    size_t inPos = 0;
    size_t inSize = 0;
    size_t outPos = 0;
    size_t outRemaining = maxOutSize - outPos;

    for (;;) {
        size_t const sizeHint = FUNC1(g_dCtx, dst+outPos, &outRemaining, src+inPos, &inSize, NULL);
        FUNC3(!FUNC2(sizeHint));

        inPos += inSize;
        inSize = sizeHint;

        outPos += outRemaining;
        outRemaining = maxOutSize - outPos;

        if (!sizeHint) break;
    }

    /* frame completed */
    if (inPos != totalInSize) {
        FUNC0("Error decompressing frame : must read (%u) full frame (%u) \n",
                (unsigned)inPos, (unsigned)totalInSize);
        FUNC4(10);
    }
    return (int)outPos;

}