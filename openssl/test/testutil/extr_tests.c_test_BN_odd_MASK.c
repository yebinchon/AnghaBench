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
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int,char*,char*,char*,char const*,int /*<<< orphan*/  const*) ; 

int FUNC2(const char *file, int line, const char *s, const BIGNUM *a)
{
    if (a != NULL && FUNC0(a))
        return 1;
    FUNC1(NULL, file, line, "BIGNUM", "ODD(", ")", s, a);
    return 0;
}