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
typedef  int /*<<< orphan*/  cmpBuf ;
typedef  int /*<<< orphan*/  LZ4_stream_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BLOCK_BYTES ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char* const,char*,int const,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char* const,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int const) ; 

void FUNC6(FILE* outFp, FILE* inpFp)
{
    LZ4_stream_t lz4Stream_body;
    LZ4_stream_t* lz4Stream = &lz4Stream_body;

    char inpBuf[2][BLOCK_BYTES];
    int  inpBufIndex = 0;

    FUNC2(lz4Stream, sizeof (*lz4Stream));

    for(;;) {
        char* const inpPtr = inpBuf[inpBufIndex];
        const int inpBytes = (int) FUNC3(inpFp, inpPtr, BLOCK_BYTES);
        if(0 == inpBytes) {
            break;
        }

        {
            char cmpBuf[FUNC0(BLOCK_BYTES)];
            const int cmpBytes = FUNC1(
                lz4Stream, inpPtr, cmpBuf, inpBytes, sizeof(cmpBuf), 1);
            if(cmpBytes <= 0) {
                break;
            }
            FUNC5(outFp, cmpBytes);
            FUNC4(outFp, cmpBuf, (size_t) cmpBytes);
        }

        inpBufIndex = (inpBufIndex + 1) % 2;
    }

    FUNC5(outFp, 0);
}