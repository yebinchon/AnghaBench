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
typedef  size_t PCWSTR ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 
 size_t FUNC2 (size_t) ; 

BOOL FUNC3(PCWSTR start, PCWSTR end, PCWSTR compare)
{
    size_t len;
    if (!end)
        return !FUNC1(start, compare);
    len = end - start;
    return FUNC2(compare) == len && !FUNC0(start, compare, len);
}