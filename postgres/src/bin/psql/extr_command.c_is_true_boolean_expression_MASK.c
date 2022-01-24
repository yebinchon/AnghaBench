#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  PsqlScanState ;
typedef  TYPE_1__* PQExpBuffer ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char const*,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(PsqlScanState scan_state, const char *name)
{
	PQExpBuffer buf = FUNC2(scan_state);
	bool		value = false;
	bool		success = FUNC0(buf->data, name, &value);

	FUNC1(buf);
	return success && value;
}