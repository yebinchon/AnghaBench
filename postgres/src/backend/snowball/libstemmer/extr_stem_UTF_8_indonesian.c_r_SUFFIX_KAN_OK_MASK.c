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
struct SN_env {int* I; } ;

/* Variables and functions */

__attribute__((used)) static int FUNC0(struct SN_env * z) { /* backwardmode */
    /* and, line 85 */
    if (!(z->I[1] != 3)) return 0; /* $(<integer expression> != <integer expression>), line 85 */
    if (!(z->I[1] != 2)) return 0; /* $(<integer expression> != <integer expression>), line 85 */
    return 1;
}