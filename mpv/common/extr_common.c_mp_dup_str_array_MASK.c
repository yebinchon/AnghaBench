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
 int /*<<< orphan*/  FUNC0 (void*,char**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (void*,char*) ; 

char **FUNC2(void *tctx, char **s)
{
    char **r = NULL;
    int num_r = 0;
    for (int n = 0; s && s[n]; n++)
        FUNC0(tctx, r, num_r, FUNC1(tctx, s[n]));
    if (r)
        FUNC0(tctx, r, num_r, NULL);
    return r;
}