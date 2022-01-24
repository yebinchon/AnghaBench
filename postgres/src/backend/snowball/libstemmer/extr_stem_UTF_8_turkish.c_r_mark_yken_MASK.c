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
struct SN_env {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct SN_env*) ; 
 int /*<<< orphan*/  s_4 ; 

__attribute__((used)) static int FUNC2(struct SN_env * z) { /* backwardmode */
    if (!(FUNC0(z, 3, s_4))) return 0; /* literal, line 306 */
    {   int ret = FUNC1(z); /* call mark_suffix_with_optional_y_consonant, line 306 */
        if (ret <= 0) return ret;
    }
    return 1;
}