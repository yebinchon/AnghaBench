#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int member_0; unsigned long long size_in; unsigned long long size_out; scalar_t__ error; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
typedef  TYPE_1__ compressResult_t ;
typedef  int /*<<< orphan*/ * LZ4F_compressionContext_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  IN_CHUNK_SIZE ; 
 size_t LZ4F_HEADER_SIZE_MAX ; 
 size_t FUNC0 (int /*<<< orphan*/ *,void*,size_t,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,void*,size_t,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,void*,size_t,void*,size_t const,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (size_t const) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 size_t FUNC6 (void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kPrefs ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC8 (void*,int,size_t const,int /*<<< orphan*/ *) ; 

__attribute__((used)) static compressResult_t
FUNC9(FILE* f_in, FILE* f_out,
                       LZ4F_compressionContext_t ctx,
                       void* inBuff,  size_t inChunkSize,
                       void* outBuff, size_t outCapacity)
{
    compressResult_t result = { 1, 0, 0 };  /* result for an error */
    unsigned long long count_in = 0, count_out;

    FUNC5(f_in != NULL); FUNC5(f_out != NULL);
    FUNC5(ctx != NULL);
    FUNC5(outCapacity >= LZ4F_HEADER_SIZE_MAX);
    FUNC5(outCapacity >= FUNC1(inChunkSize, &kPrefs));

    /* write frame header */
    {   size_t const headerSize = FUNC0(ctx, outBuff, outCapacity, &kPrefs);
        if (FUNC4(headerSize)) {
            FUNC7("Failed to start compression: error %u \n", (unsigned)headerSize);
            return result;
        }
        count_out = headerSize;
        FUNC7("Buffer size is %u bytes, header size %u bytes \n",
                (unsigned)outCapacity, (unsigned)headerSize);
        FUNC8(outBuff, 1, headerSize, f_out);
    }

    /* stream file */
    for (;;) {
        size_t const readSize = FUNC6(inBuff, 1, IN_CHUNK_SIZE, f_in);
        if (readSize == 0) break; /* nothing left to read from input file */
        count_in += readSize;

        size_t const compressedSize = FUNC3(ctx,
                                                outBuff, outCapacity,
                                                inBuff, readSize,
                                                NULL);
        if (FUNC4(compressedSize)) {
            FUNC7("Compression failed: error %u \n", (unsigned)compressedSize);
            return result;
        }

        FUNC7("Writing %u bytes\n", (unsigned)compressedSize);
        FUNC8(outBuff, 1, compressedSize, f_out);
        count_out += compressedSize;
    }

    /* flush whatever remains within internal buffers */
    {   size_t const compressedSize = FUNC2(ctx,
                                                outBuff, outCapacity,
                                                NULL);
        if (FUNC4(compressedSize)) {
            FUNC7("Failed to end compression: error %u \n", (unsigned)compressedSize);
            return result;
        }

        FUNC7("Writing %u bytes \n", (unsigned)compressedSize);
        FUNC8(outBuff, 1, compressedSize, f_out);
        count_out += compressedSize;
    }

    result.size_in = count_in;
    result.size_out = count_out;
    result.error = 0;
    return result;
}