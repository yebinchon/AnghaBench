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
typedef  scalar_t__ HPDF_UINT ;
typedef  scalar_t__ HPDF_Outline ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static HPDF_UINT
FUNC4 (HPDF_Outline  outline)
{
    HPDF_Outline  child = FUNC0 (outline);
    HPDF_UINT count = 0;

    FUNC3((" CountChild\n"));

    while (child) {
        count++;

        if (FUNC2 (child))
            count += FUNC4 (child);

        child = FUNC1 (child);
    }

    return count;
}