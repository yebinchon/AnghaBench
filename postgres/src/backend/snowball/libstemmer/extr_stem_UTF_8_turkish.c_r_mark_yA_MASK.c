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
struct SN_env {int c; int lb; int* p; } ;

/* Variables and functions */
 int /*<<< orphan*/  a_4 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*) ; 

__attribute__((used)) static int FUNC3(struct SN_env * z) { /* backwardmode */
    {   int ret = FUNC1(z); /* call check_vowel_harmony, line 198 */
        if (ret <= 0) return ret;
    }
    if (z->c <= z->lb || (z->p[z->c - 1] != 97 && z->p[z->c - 1] != 101)) return 0; /* among, line 199 */
    if (!(FUNC0(z, a_4, 2))) return 0;
    {   int ret = FUNC2(z); /* call mark_suffix_with_optional_y_consonant, line 200 */
        if (ret <= 0) return ret;
    }
    return 1;
}