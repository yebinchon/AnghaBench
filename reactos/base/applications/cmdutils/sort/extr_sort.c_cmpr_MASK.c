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
 int /*<<< orphan*/  rev ; 
 scalar_t__ sortcol ; 
 int FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*) ; 

int FUNC2(const void *a, const void *b)
{
    char *A, *B;

    A = *(char **) a;
    B = *(char **) b;

    if (sortcol > 0)
    {
        if (FUNC1(A) > sortcol)
        {
            A += sortcol;
        }
        else
        {
            A = "";
        }
        if (FUNC1(B) > sortcol)
        {
            B += sortcol;
        }
        else
        {
            B = "";
        }
    }

    if (!rev)
    {
        return FUNC0(A, B);
    }
    else
    {
        return FUNC0(B, A);
    }
}