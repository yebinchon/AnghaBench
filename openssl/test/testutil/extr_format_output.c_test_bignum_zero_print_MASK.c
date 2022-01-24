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
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  bn_chars ; 
 char* FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char,int /*<<< orphan*/ ,char const*,char const*) ; 

__attribute__((used)) static void FUNC2(const BIGNUM *bn, char sep)
{
    const char *v = FUNC0(bn);
    const char *suf = bn != NULL ? ":    0" : "";

    FUNC1("%c%*s%s\n", sep, bn_chars, v, suf);
}