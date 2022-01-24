#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int HELPLIST_CHOICE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FT_cipher ; 
 int /*<<< orphan*/  FT_general ; 
 int /*<<< orphan*/  FT_md ; 
#define  OPT_CIPHER_ALGORITHMS 146 
#define  OPT_CIPHER_COMMANDS 145 
#define  OPT_COMMANDS 144 
#define  OPT_DIGEST_ALGORITHMS 143 
#define  OPT_DIGEST_COMMANDS 142 
#define  OPT_DISABLED 141 
#define  OPT_ENGINES 140 
#define  OPT_EOF 139 
#define  OPT_ERR 138 
#define  OPT_HELP 137 
#define  OPT_KDF_ALGORITHMS 136 
#define  OPT_MAC_ALGORITHMS 135 
#define  OPT_MISSING_HELP 134 
#define  OPT_OBJECTS 133 
#define  OPT_ONE 132 
#define  OPT_OPTIONS 131 
#define  OPT_PK_ALGORITHMS 130 
#define  OPT_PK_METHOD 129 
#define  OPT_VERBOSE 128 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  list_options ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 char* FUNC15 (int,char**,int /*<<< orphan*/ ) ; 
 int FUNC16 () ; 
 scalar_t__ FUNC17 () ; 
 int verbose ; 

int FUNC18(int argc, char **argv)
{
    char *prog;
    HELPLIST_CHOICE o;
    int one = 0, done = 0;
    struct {
        unsigned int commands:1;
        unsigned int digest_commands:1;
        unsigned int digest_algorithms:1;
        unsigned int kdf_algorithms:1;
        unsigned int mac_algorithms:1;
        unsigned int cipher_commands:1;
        unsigned int cipher_algorithms:1;
        unsigned int pk_algorithms:1;
        unsigned int pk_method:1;
        unsigned int engines:1;
        unsigned int disabled:1;
        unsigned int missing_help:1;
        unsigned int objects:1;
        unsigned int options:1;
    } todo = { 0, };

    verbose = 0;                 /* Clear a possible previous call */

    prog = FUNC15(argc, argv, list_options);
    while ((o = FUNC16()) != OPT_EOF) {
        switch (o) {
        case OPT_EOF:  /* Never hit, but suppresses warning */
        case OPT_ERR:
opthelp:
            FUNC0(bio_err, "%s: Use -help for summary.\n", prog);
            return 1;
        case OPT_HELP:
            FUNC14(list_options);
            break;
        case OPT_ONE:
            one = 1;
            break;
        case OPT_COMMANDS:
            todo.commands = 1;
            break;
        case OPT_DIGEST_COMMANDS:
            todo.digest_commands = 1;
            break;
        case OPT_DIGEST_ALGORITHMS:
            todo.digest_algorithms = 1;
            break;
        case OPT_KDF_ALGORITHMS:
            todo.kdf_algorithms = 1;
            break;
        case OPT_MAC_ALGORITHMS:
            todo.mac_algorithms = 1;
            break;
        case OPT_CIPHER_COMMANDS:
            todo.cipher_commands = 1;
            break;
        case OPT_CIPHER_ALGORITHMS:
            todo.cipher_algorithms = 1;
            break;
        case OPT_PK_ALGORITHMS:
            todo.pk_algorithms = 1;
            break;
        case OPT_PK_METHOD:
            todo.pk_method = 1;
            break;
        case OPT_ENGINES:
            todo.engines = 1;
            break;
        case OPT_DISABLED:
            todo.disabled = 1;
            break;
        case OPT_MISSING_HELP:
            todo.missing_help = 1;
            break;
        case OPT_OBJECTS:
            todo.objects = 1;
            break;
        case OPT_OPTIONS:
            FUNC9(FUNC13());
            break;
        case OPT_VERBOSE:
            verbose = 1;
            break;
        }
        done = 1;
    }
    if (FUNC17() != 0) {
        FUNC0(bio_err, "Extra arguments given.\n");
        goto opthelp;
    }

    if (todo.commands)
        FUNC12(FT_general, one);
    if (todo.digest_commands)
        FUNC12(FT_md, one);
    if (todo.digest_algorithms)
        FUNC2();
    if (todo.kdf_algorithms)
        FUNC5();
    if (todo.mac_algorithms)
        FUNC6();
    if (todo.cipher_commands)
        FUNC12(FT_cipher, one);
    if (todo.cipher_algorithms)
        FUNC1();
    if (todo.pk_algorithms)
        FUNC10();
    if (todo.pk_method)
        FUNC11();
    if (todo.engines)
        FUNC4();
    if (todo.disabled)
        FUNC3();
    if (todo.missing_help)
        FUNC7();
    if (todo.objects)
        FUNC8();

    if (!done)
        goto opthelp;

    return 0;
}