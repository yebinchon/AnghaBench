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
typedef  int OPTION_CHOICE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int OPENSSL_INFO_CONFIG_DIR ; 
 int OPENSSL_INFO_CPU_SETTINGS ; 
 int OPENSSL_INFO_DIR_FILENAME_SEPARATOR ; 
 int OPENSSL_INFO_DSO_EXTENSION ; 
 int OPENSSL_INFO_ENGINES_DIR ; 
 int OPENSSL_INFO_LIST_SEPARATOR ; 
 int OPENSSL_INFO_MODULES_DIR ; 
 int OPENSSL_INFO_SEED_SOURCE ; 
 char* FUNC1 (int) ; 
#define  OPT_CONFIGDIR 136 
#define  OPT_CPUSETTINGS 135 
#define  OPT_DIRNAMESEP 134 
#define  OPT_DSOEXT 133 
#define  OPT_ENGINESDIR 132 
 int OPT_EOF ; 
#define  OPT_HELP 131 
#define  OPT_LISTSEP 130 
#define  OPT_MODULESDIR 129 
#define  OPT_SEEDS 128 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  bio_out ; 
 int /*<<< orphan*/  info_options ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int,char**,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 () ; 

int FUNC6(int argc, char **argv)
{
    int ret = 1, dirty = 0, type = 0;
    char *prog;
    OPTION_CHOICE o;

    prog = FUNC3(argc, argv, info_options);
    while ((o = FUNC4()) != OPT_EOF) {
        switch (o) {
        default:
opthelp:
            FUNC0(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case OPT_HELP:
            FUNC2(info_options);
            ret = 0;
            goto end;
        case OPT_CONFIGDIR:
            type = OPENSSL_INFO_CONFIG_DIR;
            dirty++;
            break;
        case OPT_ENGINESDIR:
            type = OPENSSL_INFO_ENGINES_DIR;
            dirty++;
            break;
        case OPT_MODULESDIR:
            type = OPENSSL_INFO_MODULES_DIR;
            dirty++;
            break;
        case OPT_DSOEXT:
            type = OPENSSL_INFO_DSO_EXTENSION;
            dirty++;
            break;
        case OPT_DIRNAMESEP:
            type = OPENSSL_INFO_DIR_FILENAME_SEPARATOR;
            dirty++;
            break;
        case OPT_LISTSEP:
            type = OPENSSL_INFO_LIST_SEPARATOR;
            dirty++;
            break;
        case OPT_SEEDS:
            type = OPENSSL_INFO_SEED_SOURCE;
            dirty++;
            break;
        case OPT_CPUSETTINGS:
            type = OPENSSL_INFO_CPU_SETTINGS;
            dirty++;
            break;
        }
    }
    if (FUNC5() != 0) {
        FUNC0(bio_err, "%s: Extra parameters given.\n", prog);
        goto opthelp;
    }
    if (dirty > 1) {
        FUNC0(bio_err, "%s: Only one item allowed\n", prog);
        goto opthelp;
    }
    if (dirty == 0) {
        FUNC0(bio_err, "%s: No items chosen\n", prog);
        goto opthelp;
    }

    FUNC0(bio_out, "%s\n", FUNC1(type));
    ret = 0;
 end:
    return ret;
}