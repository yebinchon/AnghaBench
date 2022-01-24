#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct ud {TYPE_1__* le; } ;
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/ * table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ud*) ; 
 scalar_t__ UD_TAB__OPC_TABLE ; 
 int FUNC2 (struct ud*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (struct ud*) ; 

__attribute__((used)) static int
FUNC4(struct ud *u)
{
  uint16_t ptr;
  FUNC0(u->le->type == UD_TAB__OPC_TABLE);
  FUNC1(u);
  ptr = u->le->table[FUNC3(u)];
  return FUNC2(u, ptr);
}