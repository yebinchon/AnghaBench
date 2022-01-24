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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  ASN1_UTCTIME ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,struct tm*,struct tm*) ; 
 int /*<<< orphan*/  FUNC2 (struct tm*,int /*<<< orphan*/  const*) ; 

int FUNC3(const ASN1_UTCTIME *s, time_t t)
{
    struct tm stm, ttm;
    int day, sec;

    if (!FUNC2(&stm, s))
        return -2;

    if (FUNC0(&t, &ttm) == NULL)
        return -2;

    if (!FUNC1(&day, &sec, &ttm, &stm))
        return -2;

    if (day > 0 || sec > 0)
        return 1;
    if (day < 0 || sec < 0)
        return -1;
    return 0;
}