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
 int /*<<< orphan*/  a_0 ; 
 int /*<<< orphan*/  FUNC0 (struct SN_env*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SN_env*) ; 

__attribute__((used)) static int FUNC2(struct SN_env * z) { /* backwardmode */
    if (z->c <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((67133440 >> (z->p[z->c - 1] & 0x1f)) & 1)) return 0; /* among, line 165 */
    if (!(FUNC0(z, a_0, 10))) return 0;
    {   int ret = FUNC1(z); /* call mark_suffix_with_optional_U_vowel, line 167 */
        if (ret <= 0) return ret;
    }
    return 1;
}