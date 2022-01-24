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
typedef  int /*<<< orphan*/  WPACKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 

int FUNC2(WPACKET *pkt, size_t cont_len)
{
    if (cont_len > 0xffff)
        return 0; /* Too large for supported length encodings */

    if (cont_len > 0xff) {
        if (!FUNC1(pkt, 0x82)
                || !FUNC0(pkt, cont_len))
            return 0;
    } else {
        if (cont_len > 0x7f
                && !FUNC1(pkt, 0x81))
            return 0;
        if (!FUNC1(pkt, cont_len))
            return 0;
    }

    return 1;
}