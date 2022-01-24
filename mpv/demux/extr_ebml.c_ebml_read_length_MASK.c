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

/* Variables and functions */
 int EBML_UINT_INVALID ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 

uint64_t FUNC1(stream_t *s)
{
    int i, j, num_ffs = 0, len_mask = 0x80;
    uint64_t len;

    for (i = 0, len = FUNC0(s); i < 8 && !(len & len_mask); i++)
        len_mask >>= 1;
    if (i >= 8)
        return EBML_UINT_INVALID;
    j = i + 1;
    if ((int) (len &= (len_mask - 1)) == len_mask - 1)
        num_ffs++;
    while (i--) {
        len = (len << 8) | FUNC0(s);
        if ((len & 0xFF) == 0xFF)
            num_ffs++;
    }
    if (j == num_ffs)
        return EBML_UINT_INVALID;
    if (len >= 1ULL<<63)   // Can happen if stream_read_char returns EOF
        return EBML_UINT_INVALID;
    return len;
}