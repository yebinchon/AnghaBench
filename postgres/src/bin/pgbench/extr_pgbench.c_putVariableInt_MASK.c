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
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  PgBenchValue ;
typedef  int /*<<< orphan*/  CState ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2(CState *st, const char *context, char *name, int64 value)
{
	PgBenchValue val;

	FUNC1(&val, value);
	return FUNC0(st, context, name, &val);
}