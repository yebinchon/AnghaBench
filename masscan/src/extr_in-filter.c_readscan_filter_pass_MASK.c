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
struct RangeList {scalar_t__ count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct RangeList const*,unsigned int) ; 

int
FUNC1(unsigned ip, unsigned port, unsigned type,
              const struct RangeList *ips,
              const struct RangeList *ports,
              const struct RangeList *btypes)
{
    if (ips && ips->count) {
        if (!FUNC0(ips, ip))
            return 0;
    }
    if (ports && ports->count) {
        if (!FUNC0(ports, port))
            return 0;
    }
    if (btypes && btypes->count) {
        if (!FUNC0(btypes, type))
            return 0;
    }

    return 1;
}