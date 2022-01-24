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
typedef  int /*<<< orphan*/  ASN1_TIME ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,struct tm*) ; 
 int FUNC1 (struct tm*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (struct tm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(const ASN1_TIME *s, struct tm *tm)
{
    if (s == NULL) {
        time_t now_t;

        FUNC3(&now_t);
        FUNC2(tm, 0, sizeof(*tm));
        if (FUNC0(&now_t, tm) != NULL)
            return 1;
        return 0;
    }

    return FUNC1(tm, s);
}