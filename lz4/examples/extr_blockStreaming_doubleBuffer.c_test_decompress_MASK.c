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
typedef  int /*<<< orphan*/  LZ4_streamDecode_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BLOCK_BYTES ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char* const,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char* const,size_t) ; 

void FUNC6(FILE* outFp, FILE* inpFp)
{
    LZ4_streamDecode_t lz4StreamDecode_body;
    LZ4_streamDecode_t* lz4StreamDecode = &lz4StreamDecode_body;

    char decBuf[2][BLOCK_BYTES];
    int  decBufIndex = 0;

    FUNC2(lz4StreamDecode, NULL, 0);

    for(;;) {
        char cmpBuf[FUNC0(BLOCK_BYTES)];
        int  cmpBytes = 0;

        {
            const size_t readCount0 = FUNC4(inpFp, &cmpBytes);
            if(readCount0 != 1 || cmpBytes <= 0) {
                break;
            }

            const size_t readCount1 = FUNC3(inpFp, cmpBuf, (size_t) cmpBytes);
            if(readCount1 != (size_t) cmpBytes) {
                break;
            }
        }

        {
            char* const decPtr = decBuf[decBufIndex];
            const int decBytes = FUNC1(
                lz4StreamDecode, cmpBuf, decPtr, cmpBytes, BLOCK_BYTES);
            if(decBytes <= 0) {
                break;
            }
            FUNC5(outFp, decPtr, (size_t) decBytes);
        }

        decBufIndex = (decBufIndex + 1) % 2;
    }
}