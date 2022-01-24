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
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* cb_printf ) (char*,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  RIODesc ;
typedef  TYPE_1__ RIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char const*,int) ; 
 TYPE_2__* desc ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC7(RIO *io, RIODesc *fd, const char *cmd) {
        FUNC2 ("system command (%s)\n", cmd);
        if (!FUNC3 (cmd, "help")) {
                FUNC2 ("Usage: =!cmd args\n"
                        " =!:<bochscmd>      - Send a bochs command.\n"
                        " =!dobreak          - pause bochs.\n");
		FUNC2 ("io_system: Enviando commando bochs\n");
		FUNC1 (desc, &cmd[1], true);
		io->cb_printf ("%s\n", desc->data);
	} else if (!FUNC4 (cmd, "dobreak", 7)) {
		FUNC0 (desc);
		io->cb_printf ("%s\n", desc->data);
	}
        return NULL;
}