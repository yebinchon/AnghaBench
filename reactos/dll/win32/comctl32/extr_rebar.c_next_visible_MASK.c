#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int uNumBands; } ;
typedef  TYPE_1__ REBAR_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,unsigned int) ; 

__attribute__((used)) static int FUNC2(const REBAR_INFO *infoPtr, int i)
{
    unsigned int n;
    for (n = i + 1; n < infoPtr->uNumBands; n++)
        if (!FUNC0(FUNC1(infoPtr, n)))
            break;
    return n;
}