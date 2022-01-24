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
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC4(const EC_GROUP *group)
{
    /* Is there some simpler way to do this? */
    BIGNUM *p = FUNC1();
    BIGNUM *a = FUNC1();
    BIGNUM *b = FUNC1();
    size_t field_size = 0;

    if (p == NULL || a == NULL || b == NULL)
       goto done;

    if (!FUNC3(group, p, a, b, NULL))
        goto done;
    field_size = (FUNC2(p) + 7) / 8;

 done:
    FUNC0(p);
    FUNC0(a);
    FUNC0(b);

    return field_size;
}