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
typedef  int uint32_t ;
struct tms {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  _SC_CLK_TCK ; 
 int clk_tck ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int FUNC2 (struct tms*) ; 

uint32_t
FUNC3()
{
#ifdef _DEBUG
    return 0;
#elif defined(_WIN32)
    return timeGetTime();
#else
    struct tms t;
    if (!clk_tck) clk_tck = FUNC0(_SC_CLK_TCK);
    return FUNC2(&t) * 1000 / clk_tck;
#endif
}