#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ (* hook_command ) (TYPE_4__*,char const*) ;} ;
struct TYPE_16__ {int parse_goto_count; int trap; int parse_stop; int skip; int trap_code; scalar_t__ verbose; int /*<<< orphan*/ * current_opstr; TYPE_2__ cb; TYPE_1__* Reil; } ;
struct TYPE_15__ {int (* code ) (TYPE_4__*) ;} ;
struct TYPE_13__ {int skip; char* if_buf; scalar_t__ cmd_count; scalar_t__ addr; } ;
typedef  TYPE_3__ RAnalEsilOp ;
typedef  TYPE_4__ RAnalEsil ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_4__*,char const*,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,scalar_t__) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (char const*) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,int) ; 
 scalar_t__ FUNC12 (TYPE_4__*,char const*) ; 
 int FUNC13 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC14(RAnalEsil *esil, const char *word) {
	RAnalEsilOp *op = NULL;
	if (!word) {
		return 0;
	}
	esil->parse_goto_count--;
	if (esil->parse_goto_count < 1) {
		FUNC0 ("ESIL infinite loop detected\n");
		esil->trap = 1;       // INTERNAL ERROR
		esil->parse_stop = 1; // INTERNAL ERROR
		return 0;
	}

	// Don't push anything onto stack when processing if statements
	if (!FUNC8 (word, "?{") && esil->Reil) {
		esil->Reil->skip = esil->Reil->skip? 0: 1;
		if (esil->Reil->skip) {
			esil->Reil->cmd_count = 0;
			FUNC4 (esil->Reil->if_buf, 0, sizeof (esil->Reil->if_buf));
		}
	}

	if (esil->Reil && esil->Reil->skip) {
		char *if_buf = esil->Reil->if_buf;
		FUNC11 (if_buf, word, sizeof (esil->Reil->if_buf) - FUNC10 (if_buf) - 1);
		FUNC11 (if_buf, ",", sizeof (esil->Reil->if_buf) - FUNC10 (if_buf) - 1);
		if (!FUNC8 (word, "}")) {
			FUNC7 (esil, esil->Reil->addr + esil->Reil->cmd_count + 1);
			FUNC5 (esil, esil->Reil->if_buf);
			return 1;
		}
		if (FUNC3 (esil, word, &op)) {
			esil->Reil->cmd_count++;
		}
		return 1;
	}

	//eprintf ("WORD (%d) (%s)\n", esil->skip, word);
	if (!FUNC8 (word, "}{")) {
		if (esil->skip == 1) {
			esil->skip = 0;
		} else if (esil->skip == 0) {	//this isn't perfect, but should work for valid esil
			esil->skip = 1;
		}
		return 1;
	} else if (!FUNC8 (word, "}")) {
		if (esil->skip) {
			esil->skip--;
		}
		return 1;
	}
	if (esil->skip && FUNC8(word, "?{")) {
		return 1;
	}

	if (FUNC3 (esil, word, &op)) {
		// run action
		if (op) {
			if (esil->cb.hook_command) {
				if (esil->cb.hook_command (esil, word)) {
					return 1; // XXX cannot return != 1
				}
			}
			esil->current_opstr = FUNC9 (word);
			//so this is basically just sharing what's the operation with the operation
			//useful for wrappers
			const bool ret = op->code (esil);
			FUNC2 (esil->current_opstr);
			esil->current_opstr = NULL;
			if (!ret) {
				if (esil->verbose) {
					FUNC1 ("%s returned 0\n", word);
				}
			}
			return ret;
		}
	}
	if (!*word || *word == ',') {
		// skip empty words
		return 1;
	}

	// push value
	if (!FUNC6 (esil, word)) {
		FUNC0 ("ESIL stack is full");
		esil->trap = 1;
		esil->trap_code = 1;
	}
	return 1;
}