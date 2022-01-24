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
struct TYPE_3__ {int /*<<< orphan*/  final_lsn; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ LogicalRepBeginData ;

/* Variables and functions */
 int /*<<< orphan*/  STATE_RUNNING ; 
 int in_remote_transaction ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  remote_final_lsn ; 

__attribute__((used)) static void
FUNC2(StringInfo s)
{
	LogicalRepBeginData begin_data;

	FUNC0(s, &begin_data);

	remote_final_lsn = begin_data.final_lsn;

	in_remote_transaction = true;

	FUNC1(STATE_RUNNING, NULL);
}