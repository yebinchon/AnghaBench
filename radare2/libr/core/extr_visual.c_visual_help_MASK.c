#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* print; int /*<<< orphan*/  panels_root; } ;
struct TYPE_6__ {int /*<<< orphan*/  cur_enabled; } ;
typedef  int /*<<< orphan*/  RStrBuf ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  help_msg_visual ; 
 int /*<<< orphan*/  help_msg_visual_fn ; 
 int /*<<< orphan*/  help_visual ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC12(RCore *core) {
	int ret = 0;
	RStrBuf *p, *q;
repeat:
	p = FUNC10 (NULL);
	q = FUNC10 (NULL);
	if (!p) {
		return 0;
	}
	FUNC0 ();
	FUNC5 (q, "Visual Help", help_visual);
	FUNC3 ("%s", FUNC9 (q));
	FUNC1 ();
	switch (FUNC4 ()) {
	case 'q':
		FUNC8 (p);
		return ret;
	case '!':
		FUNC6 (core, core->panels_root);
		break;
	case '?':
		FUNC5 (p, "Visual mode help", help_msg_visual);
		FUNC5 (p, "Function Keys: (See 'e key.'), defaults to", help_msg_visual_fn);
		ret = FUNC2 (FUNC9 (p), "?");
		break;
	case 'v':
		FUNC7 (p, "Visual Views:\n\n");
		FUNC7 (p,
			" \\     toggle horizonal split mode\n"
			" tt     create a new tab (same as t+)\n"
			" t=     give a name to the current tab\n"
			" t-     close current tab\n"
			" th     select previous tab (same as tj)\n"
			" tl     select next tab (same as tk)\n"
			" t[1-9] select nth tab\n"
			" C   -> rotate scr.color=0,1,2,3\n"
			" R   -> rotate color theme with ecr command which honors scr.randpal\n"
		);
		ret = FUNC2 (FUNC9 (p), "?");
		break;
	case 'p':
		FUNC7 (p, "Visual Print Modes:\n\n");
		FUNC7 (p,
			" pP  -> change to the next/previous print mode (hex, dis, ..)\n"
			" TAB -> rotate between all the configurations for the current print mode\n"
		);
		ret = FUNC2 (FUNC9 (p), "?");
		break;
	case 'e':
		FUNC7 (p, "Visual Evals:\n\n");
		FUNC7 (p,
			" E      toggle asm.leahints\n"
			" &      rotate asm.bits=16,32,64\n"
		);
		ret = FUNC2 (FUNC9 (p), "?");
		break;
	case 'c':
		FUNC11 (core, !core->print->cur_enabled);
		FUNC8 (p);
		return ret;
	case 'i':
		FUNC7 (p, "Visual Insertion Help:\n\n");
		FUNC7 (p,
			" i   -> insert bits, bytes or text depending on view\n"
			" a   -> assemble instruction and write the bytes in the current offset\n"
			" A   -> visual assembler\n"
			" +   -> increment value of byte\n"
			" -   -> decrement value of byte\n"
		);
		ret = FUNC2 (FUNC9 (p), "?");
		break;
	case 'd':
		FUNC7 (p, "Visual Debugger Help:\n\n");
		FUNC7 (p,
			" $   -> set the program counter (PC register)\n"
			" s   -> step in\n"
			" S   -> step over\n"
			" B   -> toggle breakpoint\n"
			" :dc -> continue\n"
		);
		ret = FUNC2 (FUNC9 (p), "?");
		break;
	case 'm':
		FUNC7 (p, "Visual Moving Around:\n\n");
		FUNC7 (p,
			" g        type flag/offset/register name to seek\n"
			" hl       seek to the next/previous byte\n"
			" jk       seek to the next row (core.offset += hex.cols)\n"
			" JK       seek one page down\n"
			" ^        seek to the beginning of the current map\n"
			" $        seek to the end of the current map\n"
			" c        toggle cursor mode (use hjkl to move and HJKL to select a range)\n"
			" mK/'K    mark/go to Key (any key)\n"
		);
		ret = FUNC2 (FUNC9 (p), "?");
		break;
	case 'a':
		FUNC7 (p, "Visual Analysis:\n\n");
		FUNC7 (p,
			" df -> define function\n"
			" du -> undefine function\n"
			" dc -> define as code\n"
			" dw -> define as dword (32bit)\n"
			" dw -> define as qword (64bit)\n"
			" dd -> define current block or selected bytes as data\n"
			" V  -> view graph (same as press the 'space' key)\n"
		);
		ret = FUNC2 (FUNC9 (p), "?");
		break;
	}
	FUNC8 (p);
	FUNC8 (q);
	goto repeat;
	return ret;
}