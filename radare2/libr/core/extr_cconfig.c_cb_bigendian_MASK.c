#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  i_value; } ;
struct TYPE_9__ {TYPE_3__* print; TYPE_2__* dbg; int /*<<< orphan*/  anal; int /*<<< orphan*/  assembler; } ;
struct TYPE_8__ {int /*<<< orphan*/  big_endian; } ;
struct TYPE_7__ {TYPE_1__* bp; } ;
struct TYPE_6__ {int endian; } ;
typedef  TYPE_4__ RCore ;
typedef  TYPE_5__ RConfigNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(void *user, void *data) {
	RCore *core = (RCore *) user;
	RConfigNode *node = (RConfigNode *) data;
	// Try to set endian based on preference, restrict by RAsmPlugin
	bool isbig = FUNC1 (core->assembler, node->i_value);
	// Set anal endianness the same as asm
	FUNC0 (core->anal, isbig);
	// the big endian should also be assigned to dbg->bp->endian
	if (core->dbg && core->dbg->bp) {
		core->dbg->bp->endian = isbig;
	}
	// Set printing endian to user's choice
	core->print->big_endian = node->i_value;
	return true;
}