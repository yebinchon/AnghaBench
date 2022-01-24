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
 int /*<<< orphan*/  a_20 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* backwardmode */
    {   int ret = FUNC1(z); /* call check_vowel_harmony, line 285 */
        if (ret <= 0) return ret;
    }
    if (!(FUNC0(z, a_20, 32))) return 0; /* among, line 286 */
    {   int ret = FUNC2(z); /* call mark_suffix_with_optional_y_consonant, line 290 */
        if (ret <= 0) return ret;
    }
    return 1;
}