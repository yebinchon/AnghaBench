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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  LZ4_streamDecode_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ * const,char* const,char* const,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC4 (char* const) ; 
 scalar_t__ FUNC5 (size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char* const,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char* const,int const) ; 

__attribute__((used)) static void FUNC9(
    FILE* outFp,
    FILE* inpFp,
    size_t messageMaxBytes,
    size_t ringBufferBytes)
{
    LZ4_streamDecode_t* const lz4StreamDecode = FUNC1();
    char* const cmpBuf = (char*) FUNC5(FUNC0(messageMaxBytes));
    char* const decBuf = (char*) FUNC5(ringBufferBytes);
    int decOffset = 0;

    for ( ; ; )
    {
        uint16_t cmpBytes = 0;

        if (FUNC7(inpFp, &cmpBytes) != 1) break;
        if (cmpBytes == 0) break;
        if (FUNC6(inpFp, cmpBuf, cmpBytes) != cmpBytes) break;

        {
            char* const decPtr = &decBuf[decOffset];
            const int decBytes = FUNC2(
                lz4StreamDecode, cmpBuf, decPtr, cmpBytes, (int) messageMaxBytes);
            if (decBytes <= 0) break;
            FUNC8(outFp, decPtr, decBytes);

            // Add and wraparound the ringbuffer offset
            decOffset += decBytes;
            if ((size_t)decOffset >= ringBufferBytes - messageMaxBytes) decOffset = 0;
        }
    }

    FUNC4(decBuf);
    FUNC4(cmpBuf);
    FUNC3(lz4StreamDecode);
}