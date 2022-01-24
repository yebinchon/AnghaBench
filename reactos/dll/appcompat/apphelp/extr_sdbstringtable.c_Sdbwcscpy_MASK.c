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
typedef  scalar_t__ WCHAR ;
typedef  int INT ;

/* Variables and functions */
 int FUNC0 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__ const*,size_t) ; 

INT FUNC2(WCHAR* wcDest, size_t numElement, const WCHAR *wcSrc)
{
    size_t size = 0;
    if(!wcDest || !numElement)
        return 22;  /* EINVAL */

    wcDest[0] = 0;

    if(!wcSrc)
        return 22;  /* EINVAL */

    size = FUNC0(wcSrc) + 1;

    if(size > numElement)
        return 34;  /* ERANGE */

    FUNC1(wcDest, wcSrc, size * sizeof(WCHAR));

    return 0;
}