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
struct TYPE_3__ {int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  PsqlScanState ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  ConditionalStack ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(PsqlScanState scan_state, ConditionalStack cstack,
					  PQExpBuffer query_buf)
{
	if (query_buf)
		FUNC1(cstack, query_buf->len);
	FUNC0(cstack,
									  FUNC2(scan_state));
}