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
struct ExtInstruction {int major; int minor; int flags; char* name; struct ExtInstruction* next; } ;
struct ExtCoreRegister {char* name; int number; int /*<<< orphan*/  rw; } ;
struct ExtAuxRegister {char* name; struct ExtAuxRegister* next; int /*<<< orphan*/  address; } ;
struct TYPE_2__ {char** condCodes; struct ExtCoreRegister* coreRegisters; struct ExtInstruction** instructions; struct ExtAuxRegister* auxRegisters; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int INST_HASH_SIZE ; 
 int NUM_EXT_COND ; 
 int NUM_EXT_CORE ; 
 TYPE_1__ arc_extension_map ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2 (void)
{
    struct ExtAuxRegister* r;
    int                    i;

    r = arc_extension_map.auxRegisters;

    while (r)
    {
        FUNC1("AUX : %s %ld\n", r->name, r->address);
        r = r->next;
    }

    for (i = 0; i < INST_HASH_SIZE; i++)
    {
        struct ExtInstruction *insn;

	for (insn = arc_extension_map.instructions[i]; insn != NULL; insn = insn->next) {
		FUNC1 ("INST: %d %d %x %s\n", insn->major, insn->minor, insn->flags, insn->name);
	}
    }

    for (i = 0; i < NUM_EXT_CORE; i++)
    {
        struct ExtCoreRegister reg = arc_extension_map.coreRegisters[i];

	if (reg.name) {
		FUNC1 ("CORE: %s %d %s\n", reg.name, reg.number, FUNC0 (reg.rw));
	}
    }

    for (i = 0; i < NUM_EXT_COND; i++) {
	    if (arc_extension_map.condCodes[i]) {
		    FUNC1 ("COND: %s\n", arc_extension_map.condCodes[i]);
	    }
    }
}