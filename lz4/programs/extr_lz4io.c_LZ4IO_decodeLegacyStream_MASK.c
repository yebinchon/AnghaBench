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
typedef  int /*<<< orphan*/  LZ4IO_prefs_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t LEGACY_BLOCKSIZE ; 
 unsigned int FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *,char* const,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC3 (char* const) ; 
 unsigned int FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (size_t) ; 
 int FUNC6 (char* const,char* const,int,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 size_t FUNC8 (char* const,int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char* const) ; 
 unsigned int g_magicRead ; 
 scalar_t__ FUNC10 (size_t) ; 

__attribute__((used)) static unsigned long long FUNC11(LZ4IO_prefs_t* const prefs, FILE* finput, FILE* foutput)
{
    unsigned long long streamSize = 0;
    unsigned storedSkips = 0;

    /* Allocate Memory */
    char* const in_buff  = (char*)FUNC10((size_t)FUNC5(LEGACY_BLOCKSIZE));
    char* const out_buff = (char*)FUNC10(LEGACY_BLOCKSIZE);
    if (!in_buff || !out_buff) FUNC0(51, "Allocation error : not enough memory");

    /* Main Loop */
    while (1) {
        unsigned int blockSize;

        /* Block Size */
        {   size_t const sizeCheck = FUNC8(in_buff, 1, 4, finput);
            if (sizeCheck == 0) break;                   /* Nothing to read : file read is completed */
            if (sizeCheck != 4) FUNC0(52, "Read error : cannot access block size "); }
            blockSize = FUNC3(in_buff);       /* Convert to Little Endian */
            if (blockSize > FUNC4(LEGACY_BLOCKSIZE)) {
            /* Cannot read next block : maybe new stream ? */
            g_magicRead = blockSize;
            break;
        }

        /* Read Block */
        { size_t const sizeCheck = FUNC8(in_buff, 1, blockSize, finput);
          if (sizeCheck!=blockSize) FUNC0(52, "Read error : cannot access compressed block !"); }

        /* Decode Block */
        {   int const decodeSize = FUNC6(in_buff, out_buff, (int)blockSize, LEGACY_BLOCKSIZE);
            if (decodeSize < 0) FUNC0(53, "Decoding Failed ! Corrupted input detected !");
            streamSize += (unsigned long long)decodeSize;
            /* Write Block */
            storedSkips = FUNC1(prefs, foutput, out_buff, (size_t)decodeSize, storedSkips); /* success or die */
    }   }
    if (FUNC7(finput)) FUNC0(54, "Read error : ferror");

    FUNC2(foutput, storedSkips);

    /* Free */
    FUNC9(in_buff);
    FUNC9(out_buff);

    return streamSize;
}