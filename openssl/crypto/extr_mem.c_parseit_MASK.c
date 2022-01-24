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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  md_count ; 
 int /*<<< orphan*/  md_fail_percent ; 
 char* md_failstring ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static void FUNC3(void)
{
    char *semi = FUNC2(md_failstring, ';');
    char *atsign;

    if (semi != NULL)
        *semi++ = '\0';

    /* Get the count (atol will stop at the @ if there), and percentage */
    md_count = FUNC1(md_failstring);
    atsign = FUNC2(md_failstring, '@');
    md_fail_percent = atsign == NULL ? 0 : FUNC0(atsign + 1);

    if (semi != NULL)
        md_failstring = semi;
}