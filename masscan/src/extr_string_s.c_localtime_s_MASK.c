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
typedef  int errno_t ;

/* Variables and functions */
 struct tm* FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct tm*,struct tm*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tm*,int /*<<< orphan*/ ,int) ; 

errno_t FUNC3(struct tm* _tm, const time_t *time)
{
    struct tm *x;

    x = FUNC0(time);
    if (x == NULL) {
        FUNC2(_tm, 0, sizeof(*_tm));
        return -1;
    }
    FUNC1(_tm, x, sizeof(*_tm));

    return 0;
}