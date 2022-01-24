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
struct timeval {unsigned int tv_sec; unsigned int tv_usec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

void
FUNC2(unsigned int n)
{
#ifdef _WIN32
    Sleep(n);
#else
    struct timeval tv;
    tv.tv_sec = n / 1000;
    tv.tv_usec = (n % 1000) * 1000;
    FUNC1(0, NULL, NULL, NULL, &tv);
#endif
}