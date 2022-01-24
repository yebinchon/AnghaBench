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
typedef  int /*<<< orphan*/  LZ4F_dctx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,void*,size_t*,void const*,size_t*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (void*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (void*,int,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(FILE* f_in, FILE* f_out,
                         LZ4F_dctx* dctx,
                         void* src, size_t srcCapacity, size_t filled, size_t alreadyConsumed,
                         void* dst, size_t dstCapacity)
{
    int firstChunk = 1;
    size_t ret = 1;

    FUNC3(f_in != NULL); FUNC3(f_out != NULL);
    FUNC3(dctx != NULL);
    FUNC3(src != NULL); FUNC3(srcCapacity > 0); FUNC3(filled <= srcCapacity); FUNC3(alreadyConsumed <= filled);
    FUNC3(dst != NULL); FUNC3(dstCapacity > 0);

    /* Decompression */
    while (ret != 0) {
        /* Load more input */
        size_t readSize = firstChunk ? filled : FUNC6(src, 1, srcCapacity, f_in); firstChunk=0;
        const void* srcPtr = (const char*)src + alreadyConsumed; alreadyConsumed=0;
        const void* const srcEnd = (const char*)srcPtr + readSize;
        if (readSize == 0 || FUNC5(f_in)) {
            FUNC7("Decompress: not enough input or error reading file\n");
            return 1;
        }

        /* Decompress:
         * Continue while there is more input to read (srcPtr != srcEnd)
         * and the frame isn't over (ret != 0)
         */
        while (srcPtr < srcEnd && ret != 0) {
            /* Any data within dst has been flushed at this stage */
            size_t dstSize = dstCapacity;
            size_t srcSize = (const char*)srcEnd - (const char*)srcPtr;
            ret = FUNC0(dctx, dst, &dstSize, srcPtr, &srcSize, /* LZ4F_decompressOptions_t */ NULL);
            if (FUNC2(ret)) {
                FUNC7("Decompression error: %s\n", FUNC1(ret));
                return 1;
            }
            /* Flush output */
            if (dstSize != 0) FUNC8(dst, 1, dstSize, f_out);
            /* Update input */
            srcPtr = (const char*)srcPtr + srcSize;
        }

        FUNC3(srcPtr <= srcEnd);

        /* Ensure all input data has been consumed.
         * It is valid to have multiple frames in the same file,
         * but this example only supports one frame.
         */
        if (srcPtr < srcEnd) {
            FUNC7("Decompress: Trailing data left in file after frame\n");
            return 1;
        }
    }

    /* Check that there isn't trailing data in the file after the frame.
     * It is valid to have multiple frames in the same file,
     * but this example only supports one frame.
     */
    {   size_t const readSize = FUNC6(src, 1, 1, f_in);
        if (readSize != 0 || !FUNC4(f_in)) {
            FUNC7("Decompress: Trailing data left in file after frame\n");
            return 1;
    }   }

    return 0;
}