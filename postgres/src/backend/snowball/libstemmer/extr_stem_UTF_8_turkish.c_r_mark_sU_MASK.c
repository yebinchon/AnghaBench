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
 int /*<<< orphan*/  g_U ; 
 scalar_t__ FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* backwardmode */
    {   int ret = FUNC1(z); /* call check_vowel_harmony, line 171 */
        if (ret <= 0) return ret;
    }
    if (FUNC0(z, g_U, 105, 305, 0)) return 0; /* grouping U, line 172 */
    {   int ret = FUNC2(z); /* call mark_suffix_with_optional_s_consonant, line 173 */
        if (ret <= 0) return ret;
    }
    return 1;
}