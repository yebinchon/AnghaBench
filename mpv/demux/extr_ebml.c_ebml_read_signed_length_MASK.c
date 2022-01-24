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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ EBML_INT_INVALID ; 
 scalar_t__ EBML_UINT_INVALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

int64_t FUNC2(stream_t *s)
{
    uint64_t unum;
    int l;

    /* read as unsigned number first */
    uint64_t offset = FUNC1(s);
    unum = FUNC0(s);
    if (unum == EBML_UINT_INVALID)
        return EBML_INT_INVALID;
    l = FUNC1(s) - offset;

    return unum - ((1LL << ((7 * l) - 1)) - 1);
}