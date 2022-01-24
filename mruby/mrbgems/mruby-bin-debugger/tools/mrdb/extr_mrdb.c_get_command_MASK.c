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
struct TYPE_3__ {int* command; } ;
typedef  TYPE_1__ mrdb_state ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int EOF ; 
 int MAX_COMMAND_LINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC4 (int*,char*) ; 

__attribute__((used)) static char*
FUNC5(mrb_state *mrb, mrdb_state *mrdb)
{
  int i;
  int c;

  for (i=0; i<MAX_COMMAND_LINE; i++) {
    if ((c=FUNC2()) == EOF || c == '\n') break;
    mrdb->command[i] = c;
  }

  if (i == 0 && FUNC1(stdin)) {
    FUNC0(stdin);
    FUNC4(mrdb->command, "quit");
    i += sizeof("quit") - 1;
  }

  if (i == MAX_COMMAND_LINE) {
    for ( ; (c=FUNC2()) != EOF && c !='\n'; i++) ;
  }

  if (i > MAX_COMMAND_LINE) {
    FUNC3("command line too long.\n");
    i = 0; /* discard command data */
  }
  mrdb->command[i] = '\0';

  return mrdb->command;
}