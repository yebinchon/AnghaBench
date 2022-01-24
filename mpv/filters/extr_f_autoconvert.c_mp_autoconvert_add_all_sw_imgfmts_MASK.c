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
struct mp_autoconvert {int dummy; } ;

/* Variables and functions */
 int IMGFMT_END ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IMGFMT_START ; 
 int /*<<< orphan*/  FUNC1 (struct mp_autoconvert*,int,int /*<<< orphan*/ ) ; 

void FUNC2(struct mp_autoconvert *c)
{
    for (int n = IMGFMT_START; n < IMGFMT_END; n++) {
        if (!FUNC0(n))
            FUNC1(c, n, 0);
    }
}