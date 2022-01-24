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
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void* const,size_t,char*,int,int,size_t*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (void* const,size_t,double,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void* const) ; 
 void* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static void FUNC6(int cLevel, int cLevelLast, double compressibility,
                              const char* dictBuf, int dictSize)
{
    char name[20] = {0};
    size_t benchedSize = 10000000;
    void* const srcBuffer = FUNC4(benchedSize);

    /* Memory allocation */
    if (!srcBuffer) FUNC1(21, "not enough memory");

    /* Fill input buffer */
    FUNC2(srcBuffer, benchedSize, compressibility, 0.0, 0);

    /* Bench */
    FUNC5 (name, sizeof(name), "Synthetic %2u%%", (unsigned)(compressibility*100));
    FUNC0(srcBuffer, benchedSize, name, cLevel, cLevelLast, &benchedSize, 1, dictBuf, dictSize);

    /* clean up */
    FUNC3(srcBuffer);
}