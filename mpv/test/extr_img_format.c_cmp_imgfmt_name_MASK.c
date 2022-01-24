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
 char* FUNC0 (int) ; 
 int FUNC1 (char*,char*) ; 

__attribute__((used)) static int FUNC2(const void *a, const void *b)
{
    char *name_a = FUNC0(*(int *)a);
    char *name_b = FUNC0(*(int *)b);

    return FUNC1(name_a, name_b);
}