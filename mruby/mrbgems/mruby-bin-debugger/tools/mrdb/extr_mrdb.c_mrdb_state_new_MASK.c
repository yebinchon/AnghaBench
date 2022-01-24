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
struct TYPE_4__ {char* command; int print_no; int /*<<< orphan*/  dbg; } ;
typedef  TYPE_1__ mrdb_state ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int MAX_COMMAND_LINE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static mrdb_state*
FUNC3(mrb_state *mrb)
{
  mrdb_state *mrdb = (mrdb_state*)FUNC2(mrb, sizeof(mrdb_state));

  FUNC0(mrdb, 0, sizeof(mrdb_state));

  mrdb->dbg = FUNC1(mrb);
  mrdb->command = (char*)FUNC2(mrb, MAX_COMMAND_LINE+1);
  mrdb->print_no = 1;

  return mrdb;
}