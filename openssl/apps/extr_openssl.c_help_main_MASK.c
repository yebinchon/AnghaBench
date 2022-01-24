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
struct TYPE_7__ {int columns; int /*<<< orphan*/  width; } ;
struct TYPE_6__ {scalar_t__ type; int /*<<< orphan*/ * name; } ;
typedef  int HELP_CHOICE ;
typedef  scalar_t__ FUNC_TYPE ;
typedef  TYPE_1__ FUNCTION ;
typedef  TYPE_2__ DISPLAY_COLUMNS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FT_cipher ; 
 scalar_t__ FT_md ; 
 scalar_t__ FT_none ; 
#define  OPT_hEOF 130 
#define  OPT_hERR 129 
#define  OPT_hHELP 128 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,char**) ; 
 TYPE_1__* functions ; 
 int /*<<< orphan*/  help_options ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int,char**,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 char** FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(int argc, char **argv)
{
    FUNCTION *fp;
    int i, nl;
    FUNC_TYPE tp;
    char *prog;
    HELP_CHOICE o;
    DISPLAY_COLUMNS dc;

    prog = FUNC4(argc, argv, help_options);
    while ((o = FUNC5()) != OPT_hEOF) {
        switch (o) {
        case OPT_hERR:
        case OPT_hEOF:
            FUNC0(bio_err, "%s: Use -help for summary.\n", prog);
            return 1;
        case OPT_hHELP:
            FUNC3(help_options);
            return 0;
        }
    }

    if (FUNC6() == 1) {
        char *new_argv[3];

        new_argv[0] = FUNC7()[0];
        new_argv[1] = "--help";
        new_argv[2] = NULL;
        return FUNC2(FUNC8(), 2, new_argv);
    }
    if (FUNC6() != 0) {
        FUNC0(bio_err, "Usage: %s\n", prog);
        return 1;
    }

    FUNC1(functions, &dc);
    FUNC0(bio_err, "Standard commands");
    i = 0;
    tp = FT_none;
    for (fp = functions; fp->name != NULL; fp++) {
        nl = 0;
        if (i++ % dc.columns == 0) {
            FUNC0(bio_err, "\n");
            nl = 1;
        }
        if (fp->type != tp) {
            tp = fp->type;
            if (!nl)
                FUNC0(bio_err, "\n");
            if (tp == FT_md) {
                i = 1;
                FUNC0(bio_err,
                           "\nMessage Digest commands (see the `dgst' command for more details)\n");
            } else if (tp == FT_cipher) {
                i = 1;
                FUNC0(bio_err,
                           "\nCipher commands (see the `enc' command for more details)\n");
            }
        }
        FUNC0(bio_err, "%-*s", dc.width, fp->name);
    }
    FUNC0(bio_err, "\n\n");
    return 0;
}