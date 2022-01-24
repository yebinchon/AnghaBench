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
typedef  int /*<<< orphan*/  Timestamp ;
typedef  int /*<<< orphan*/  FmgrInfo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  timestamp_ge ; 

__attribute__((used)) static bool
FUNC3(const void *a, const void *b, FmgrInfo *flinfo)
{
	const Timestamp *aa = (const Timestamp *) a;
	const Timestamp *bb = (const Timestamp *) b;

	return FUNC0(FUNC1(timestamp_ge,
											FUNC2(*aa),
											FUNC2(*bb)));
}