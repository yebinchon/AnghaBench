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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  EBML_INT_INVALID ; 
 int EBML_UINT_INVALID ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

int64_t FUNC2(stream_t *s)
{
    uint64_t value = 0;
    uint64_t len;
    int l;

    len = FUNC0(s);
    if (len == EBML_UINT_INVALID || len > 8)
        return EBML_INT_INVALID;
    if (!len)
        return 0;

    len--;
    l = FUNC1(s);
    if (l & 0x80)
        value = -1;
    value = (value << 8) | l;
    while (len--)
        value = (value << 8) | FUNC1(s);

    return (int64_t)value; // assume complement of 2
}