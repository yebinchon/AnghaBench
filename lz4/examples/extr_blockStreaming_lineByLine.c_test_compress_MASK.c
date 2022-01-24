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
typedef  int /*<<< orphan*/  LZ4_stream_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 int FUNC1 (int /*<<< orphan*/ * const,char* const,char* const,int,size_t const,int) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC4 (char* const,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char* const) ; 
 scalar_t__ FUNC6 (size_t const) ; 
 size_t FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char* const,int const) ; 
 scalar_t__ FUNC9 (char* const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char* const,int const) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(
    FILE* outFp,
    FILE* inpFp,
    size_t messageMaxBytes,
    size_t ringBufferBytes)
{
    LZ4_stream_t* const lz4Stream = FUNC2();
    const size_t cmpBufBytes = FUNC0(messageMaxBytes);
    char* const cmpBuf = (char*) FUNC6(cmpBufBytes);
    char* const inpBuf = (char*) FUNC6(ringBufferBytes);
    int inpOffset = 0;

    for ( ; ; )
    {
        char* const inpPtr = &inpBuf[inpOffset];

#if 0
        // Read random length data to the ring buffer.
        const int randomLength = (rand() % messageMaxBytes) + 1;
        const int inpBytes = (int) read_bin(inpFp, inpPtr, randomLength);
        if (0 == inpBytes) break;
#else
        // Read line to the ring buffer.
        int inpBytes = 0;
        if (!FUNC4(inpPtr, (int) messageMaxBytes, inpFp))
            break;
        inpBytes = (int) FUNC9(inpPtr);
#endif

        {
            const int cmpBytes = FUNC1(
                lz4Stream, inpPtr, cmpBuf, inpBytes, cmpBufBytes, 1);
            if (cmpBytes <= 0) break;
            FUNC11(outFp, (uint16_t) cmpBytes);
            FUNC10(outFp, cmpBuf, cmpBytes);

            // Add and wraparound the ringbuffer offset
            inpOffset += inpBytes;
            if ((size_t)inpOffset >= ringBufferBytes - messageMaxBytes) inpOffset = 0;
        }
    }
    FUNC11(outFp, 0);

    FUNC5(inpBuf);
    FUNC5(cmpBuf);
    FUNC3(lz4Stream);
}