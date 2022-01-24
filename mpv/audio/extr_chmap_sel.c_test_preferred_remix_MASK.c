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
struct mp_chmap {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (struct mp_chmap*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_chmap*) ; 
 int /*<<< orphan*/ ** preferred_remix ; 

__attribute__((used)) static bool FUNC3(const struct mp_chmap *src,
                                 const struct mp_chmap *dst)
{
    struct mp_chmap src_p = *src, dst_p = *dst;
    FUNC2(&src_p);
    FUNC2(&dst_p);
    for (int n = 0; n < FUNC0(preferred_remix); n++) {
        if (FUNC1(&src_p, &preferred_remix[n][0]) &&
            FUNC1(&dst_p, &preferred_remix[n][1]))
            return true;
    }
    return false;
}