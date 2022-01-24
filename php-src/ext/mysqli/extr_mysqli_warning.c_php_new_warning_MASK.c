#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int errorno; int /*<<< orphan*/  sqlstate; int /*<<< orphan*/  reason; } ;
typedef  TYPE_1__ MYSQLI_WARNING ;

/* Variables and functions */
 int /*<<< orphan*/  ZSTR_DUPLICATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int) ; 

__attribute__((used)) static
MYSQLI_WARNING *FUNC3(const char *reason, int errorno)
{
	MYSQLI_WARNING *w;

	w = (MYSQLI_WARNING *)FUNC2(1, sizeof(MYSQLI_WARNING));

	FUNC0(&(w->reason), reason, ZSTR_DUPLICATE);

	FUNC1(&(w->sqlstate), "HY000", sizeof("HY000") - 1,  ZSTR_DUPLICATE);

	w->errorno = errorno;

	return w;
}