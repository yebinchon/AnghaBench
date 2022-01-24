#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int index; int length; scalar_t__ data; } ;
struct TYPE_9__ {char* prompt; TYPE_2__ buffer; } ;
struct TYPE_8__ {int /*<<< orphan*/  rows; TYPE_1__* line; } ;
struct TYPE_6__ {scalar_t__ prompt_type; } ;
typedef  TYPE_3__ RCons ;

/* Variables and functions */
 char* Color_RESET ; 
 TYPE_5__ I ; 
 scalar_t__ R_LINE_PROMPT_OFFSET ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 () ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC11 (scalar_t__) ; 

__attribute__((used)) static void FUNC12() {
        RCons *cons = FUNC9 ();
	int columns = FUNC7 (NULL) - 2;
	int chars = FUNC0 (1, FUNC11 (I.buffer.data));	
	int len, i, cols = FUNC0 (1, columns - FUNC10 (I.prompt) - 2);
	if (cons->line->prompt_type == R_LINE_PROMPT_OFFSET) {
                FUNC8 (0,  cons->rows);
                FUNC6 ();
	}
	FUNC5 (0);
	FUNC4 ("\r%s%s", Color_RESET, I.prompt);
	FUNC3 (I.buffer.data, 1, FUNC1 (cols, chars), stdout);
	FUNC4 ("\r%s", I.prompt);
	if (I.buffer.index > cols) {
		FUNC4 ("< ");
		i = I.buffer.index - cols;
		if (i > sizeof (I.buffer.data)) {
			i = sizeof (I.buffer.data) - 1;
		}
	} else {
		i = 0;
	}
	len = I.buffer.index - i;
	if (len > 0 && (i + len) <= I.buffer.length) {
		FUNC3 (I.buffer.data + i, 1, len, stdout);
	}
	FUNC2 (stdout);
}