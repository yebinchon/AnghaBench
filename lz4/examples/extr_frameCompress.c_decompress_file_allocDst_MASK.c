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
typedef  int /*<<< orphan*/  LZ4F_frameInfo_t ;
typedef  int /*<<< orphan*/  LZ4F_dctx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t LZ4F_HEADER_SIZE_MAX ; 
 char* FUNC0 (size_t const) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,size_t*) ; 
 scalar_t__ FUNC2 (size_t const) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,size_t,size_t const,size_t,void* const,size_t const) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (void*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void* const) ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (size_t const) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

__attribute__((used)) static int
FUNC12(FILE* f_in, FILE* f_out,
                        LZ4F_dctx* dctx,
                        void* src, size_t srcCapacity)
{
    FUNC3(f_in != NULL); FUNC3(f_out != NULL);
    FUNC3(dctx != NULL);
    FUNC3(src != NULL);
    FUNC3(srcCapacity >= LZ4F_HEADER_SIZE_MAX);  /* ensure LZ4F_getFrameInfo() can read enough data */

    /* Read Frame header */
    size_t const readSize = FUNC6(src, 1, srcCapacity, f_in);
    if (readSize == 0 || FUNC5(f_in)) {
        FUNC11("Decompress: not enough input or error reading file\n");
        return 1;
    }

    LZ4F_frameInfo_t info;
    size_t consumedSize = readSize;
    {   size_t const fires = FUNC1(dctx, &info, src, &consumedSize);
        if (FUNC2(fires)) {
            FUNC11("LZ4F_getFrameInfo error: %s\n", FUNC0(fires));
            return 1;
    }   }

    /* Allocating enough space for an entire block isn't necessary for
     * correctness, but it allows some memcpy's to be elided.
     */
    size_t const dstCapacity = FUNC8(&info);
    void* const dst = FUNC9(dstCapacity);
    if (!dst) { FUNC10("decompress_file(dst)"); return 1; }

    int const decompressionResult = FUNC4(
                        f_in, f_out,
                        dctx,
                        src, srcCapacity, readSize-consumedSize, consumedSize,
                        dst, dstCapacity);

    FUNC7(dst);
    return decompressionResult;
}