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
typedef  int /*<<< orphan*/  dRess_t ;
typedef  scalar_t__ clock_t ;
typedef  int /*<<< orphan*/  LZ4IO_prefs_t ;

/* Variables and functions */
 double CLOCKS_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int,char*,double const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const) ; 
 int FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/  const,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC4 () ; 

int FUNC5(LZ4IO_prefs_t* const prefs, const char* input_filename, const char* output_filename)
{
    dRess_t const ress = FUNC1(prefs);
    clock_t const start = FUNC4();

    int const missingFiles = FUNC2(prefs, ress, input_filename, output_filename);

    clock_t const end = FUNC4();
    double const seconds = (double)(end - start) / CLOCKS_PER_SEC;
    FUNC0(4, "Done in %.2f sec  \n", seconds);

    FUNC3(ress);
    return missingFiles;
}