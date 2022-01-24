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
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ TCHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 

VOID
FUNC1(TCHAR *in)
{
    TCHAR *out = in;
    for (; *in; in++)
    {
        if (*in != FUNC0('"'))
            *out++ = *in;
    }
    *out = FUNC0('\0');
}