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
struct sqlvar_compat {int dummy; } ;
struct sqlda_compat {int dummy; } ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (long,int,int /*<<< orphan*/ ,long*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static long
FUNC4(const PGresult *res)
{
	long		offset;
	int			i;
	int			sqld = FUNC1(res);

	/* Initial size to store main structure and field structures */
	offset = sizeof(struct sqlda_compat) + sqld * sizeof(struct sqlvar_compat);

	/* Add space for field names */
	for (i = 0; i < sqld; i++)
		offset += FUNC3(FUNC0(res, i)) + 1;

	/* Add padding to the first field value */
	FUNC2(offset, sizeof(int), 0, &offset, NULL);

	return offset;
}