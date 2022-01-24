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
typedef  int (* compressFn ) (char const*,char*,int,int,int const) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int const LZ4HC_CLEVEL_MIN ; 
 int FUNC1 (char const*,char*,int,int,int const) ; 
 int FUNC2 (char const*,char*,int,int,int const) ; 
 int FUNC3 (char const*,char*,int const,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 size_t FUNC5 (void const*,void*,size_t) ; 
 int FUNC6 (void const*,size_t) ; 

__attribute__((used)) static void FUNC7(void* resultBuff, size_t resultBuffCapacity,
                          void* compressedBuff, size_t compressedBuffCapacity,
                    const void* srcBuff, size_t srcSize,
                          int clevel)
{
    int const proposed_clevel = clevel ? clevel : FUNC6(srcBuff, srcSize);
    int const selected_clevel = proposed_clevel < 0 ? -proposed_clevel : proposed_clevel;   /* if level < 0, it becomes an accelearion value */
    compressFn compress = selected_clevel >= LZ4HC_CLEVEL_MIN ? LZ4_compress_HC : LZ4_compress_fast;
    int const cSize = compress((const char*)srcBuff, (char*)compressedBuff, (int)srcSize, (int)compressedBuffCapacity, selected_clevel);
    FUNC0(cSize == 0, "Compression error !");

    {   int const dSize = FUNC3((const char*)compressedBuff, (char*)resultBuff, cSize, (int)resultBuffCapacity);
        FUNC0(dSize < 0, "Decompression detected an error !");
        FUNC0(dSize != (int)srcSize, "Decompression corruption error : wrong decompressed size !");
    }

    /* check potential content corruption error */
    FUNC4(resultBuffCapacity >= srcSize);
    {   size_t const errorPos = FUNC5(srcBuff, resultBuff, srcSize);
        FUNC0(errorPos != srcSize,
                    "Silent decoding corruption, at pos %u !!!",
                    (unsigned)errorPos);
    }

}