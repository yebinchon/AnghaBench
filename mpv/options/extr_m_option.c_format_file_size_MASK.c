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
typedef  int int64_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char*,double) ; 

char *FUNC1(int64_t size)
{
    double s = size;
    if (size < 1024)
        return FUNC0(NULL, "%.0f B", s);

    if (size < (1024 * 1024))
        return FUNC0(NULL, "%.3f KiB", s / (1024.0));

    if (size < (1024 * 1024 * 1024))
        return FUNC0(NULL, "%.3f MiB", s / (1024.0 * 1024.0));

    if (size < (1024LL * 1024LL * 1024LL * 1024LL))
        return FUNC0(NULL, "%.3f GiB", s / (1024.0 * 1024.0 * 1024.0));

    return FUNC0(NULL, "%.3f TiB", s / (1024.0 * 1024.0 * 1024.0 * 1024.0));
}