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
 int /*<<< orphan*/  g_vowel ; 
 scalar_t__ FUNC1 (struct SN_env*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_0 ; 

__attribute__((used)) static int FUNC2(struct SN_env * z) { /* forwardmode */
    if (FUNC1(z, g_vowel, 97, 117, 0)) return 0; /* non vowel, line 143 */
    if (!(FUNC0(z, 2, s_0))) return 0; /* literal, line 143 */
    return 1;
}