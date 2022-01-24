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
typedef  scalar_t__ clock_t ;
typedef  int /*<<< orphan*/  cRess_t ;
typedef  int /*<<< orphan*/  UTIL_time_t ;
typedef  scalar_t__ U64 ;
typedef  int /*<<< orphan*/  LZ4IO_prefs_t ;

/* Variables and functions */
 double CLOCKS_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int,char*,double const,double const) ; 
 int FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/  const,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 

int FUNC7(LZ4IO_prefs_t* const prefs, const char* srcFileName, const char* dstFileName, int compressionLevel)
{
    UTIL_time_t const timeStart = FUNC5();
    clock_t const cpuStart = FUNC6();
    cRess_t const ress = FUNC2(prefs);

    int const result = FUNC1(prefs, ress, srcFileName, dstFileName, compressionLevel);

    /* Free resources */
    FUNC3(ress);

    /* Final Status */
    {   clock_t const cpuEnd = FUNC6();
        double const cpuLoad_s = (double)(cpuEnd - cpuStart) / CLOCKS_PER_SEC;
        U64 const timeLength_ns = FUNC4(timeStart);
        double const timeLength_s = (double)timeLength_ns / 1000000000;
        FUNC0(4, "Completed in %.2f sec  (cpu load : %.0f%%)\n",
                        timeLength_s, (cpuLoad_s / timeLength_s) * 100);
    }

    return result;
}