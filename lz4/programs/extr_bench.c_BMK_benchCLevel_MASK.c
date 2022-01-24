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
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,size_t,char const*,int,size_t const*,unsigned int,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LZ4_GIT_COMMIT_STRING ; 
 int /*<<< orphan*/  LZ4_VERSION_STRING ; 
 int /*<<< orphan*/  SET_REALTIME_PRIORITY ; 
 int /*<<< orphan*/  g_additionalParam ; 
 int g_blockSize ; 
 int g_displayLevel ; 
 int /*<<< orphan*/  g_nbSeconds ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static void FUNC3(void* srcBuffer, size_t benchedSize,
                            const char* displayName, int cLevel, int cLevelLast,
                            const size_t* fileSizes, unsigned nbFiles,
                            const char* dictBuf, int dictSize)
{
    int l;

    const char* pch = FUNC2(displayName, '\\'); /* Windows */
    if (!pch) pch = FUNC2(displayName, '/'); /* Linux */
    if (pch) displayName = pch+1;

    SET_REALTIME_PRIORITY;

    if (g_displayLevel == 1 && !g_additionalParam)
        FUNC1("bench %s %s: input %u bytes, %u seconds, %u KB blocks\n", LZ4_VERSION_STRING, LZ4_GIT_COMMIT_STRING, (U32)benchedSize, g_nbSeconds, (U32)(g_blockSize>>10));

    if (cLevelLast < cLevel) cLevelLast = cLevel;

    for (l=cLevel; l <= cLevelLast; l++) {
        FUNC0(srcBuffer, benchedSize,
                     displayName, l,
                     fileSizes, nbFiles,
                     dictBuf, dictSize);
    }
}