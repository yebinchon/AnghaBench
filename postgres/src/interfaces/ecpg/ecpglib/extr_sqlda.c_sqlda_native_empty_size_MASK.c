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
struct sqlvar_struct {int dummy; } ;
struct sqlda_struct {int dummy; } ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (long,int,int /*<<< orphan*/ ,long*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static long
FUNC2(const PGresult *res)
{
	long		offset;
	int			sqld = FUNC0(res);

	/* Initial size to store main structure and field structures */
	offset = sizeof(struct sqlda_struct) + (sqld - 1) * sizeof(struct sqlvar_struct);

	/* Add padding to the first field value */
	FUNC1(offset, sizeof(int), 0, &offset, NULL);

	return offset;
}