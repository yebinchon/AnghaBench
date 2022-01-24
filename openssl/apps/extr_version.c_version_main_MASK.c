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
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 () ; 
 char* FUNC3 () ; 
 char* FUNC4 () ; 
 char* FUNC5 () ; 
 int /*<<< orphan*/  OPENSSL_BUILT_ON ; 
 int /*<<< orphan*/  OPENSSL_CFLAGS ; 
 int /*<<< orphan*/  OPENSSL_CPU_INFO ; 
 int /*<<< orphan*/  OPENSSL_DIR ; 
 int /*<<< orphan*/  OPENSSL_ENGINES_DIR ; 
 int /*<<< orphan*/  OPENSSL_INFO_SEED_SOURCE ; 
 int /*<<< orphan*/  OPENSSL_MODULES_DIR ; 
 int /*<<< orphan*/  OPENSSL_PLATFORM ; 
 int /*<<< orphan*/  OPENSSL_VERSION ; 
 char* OPENSSL_VERSION_TEXT ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
#define  OPT_A 141 
#define  OPT_B 140 
#define  OPT_C 139 
#define  OPT_D 138 
#define  OPT_E 137 
#define  OPT_EOF 136 
#define  OPT_ERR 135 
#define  OPT_F 134 
#define  OPT_HELP 133 
#define  OPT_M 132 
#define  OPT_O 131 
#define  OPT_P 130 
#define  OPT_R 129 
#define  OPT_V 128 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 () ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (int,char**,int /*<<< orphan*/ ) ; 
 int FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  version_options ; 

int FUNC14(int argc, char **argv)
{
    int ret = 1, dirty = 0, seed = 0;
    int cflags = 0, version = 0, date = 0, options = 0, platform = 0, dir = 0;
    int engdir = 0, moddir = 0, cpuinfo = 0;
    char *prog;
    OPTION_CHOICE o;

    prog = FUNC10(argc, argv, version_options);
    while ((o = FUNC11()) != OPT_EOF) {
        switch (o) {
        case OPT_EOF:
        case OPT_ERR:
opthelp:
            FUNC1(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case OPT_HELP:
            FUNC9(version_options);
            ret = 0;
            goto end;
        case OPT_B:
            dirty = date = 1;
            break;
        case OPT_D:
            dirty = dir = 1;
            break;
        case OPT_E:
            dirty = engdir = 1;
            break;
        case OPT_M:
            dirty = moddir = 1;
            break;
        case OPT_F:
            dirty = cflags = 1;
            break;
        case OPT_O:
            dirty = options = 1;
            break;
        case OPT_P:
            dirty = platform = 1;
            break;
        case OPT_R:
            dirty = seed = 1;
            break;
        case OPT_V:
            dirty = version = 1;
            break;
        case OPT_C:
            dirty = cpuinfo = 1;
            break;
        case OPT_A:
            seed = options = cflags = version = date = platform
                = dir = engdir = moddir = cpuinfo
                = 1;
            break;
        }
    }
    if (FUNC12() != 0) {
        FUNC1(bio_err, "Extra parameters given.\n");
        goto opthelp;
    }
    if (!dirty)
        version = 1;

    if (version)
        FUNC13("%s (Library: %s)\n",
               OPENSSL_VERSION_TEXT, FUNC7(OPENSSL_VERSION));
    if (date)
        FUNC13("%s\n", FUNC7(OPENSSL_BUILT_ON));
    if (platform)
        FUNC13("%s\n", FUNC7(OPENSSL_PLATFORM));
    if (options) {
        FUNC13("options: ");
        FUNC13(" %s", FUNC2());
#ifndef OPENSSL_NO_MD2
        FUNC13(" %s", FUNC5());
#endif
#ifndef OPENSSL_NO_RC4
        FUNC13(" %s", FUNC8());
#endif
#ifndef OPENSSL_NO_DES
        FUNC13(" %s", FUNC3());
#endif
#ifndef OPENSSL_NO_IDEA
        FUNC13(" %s", FUNC4());
#endif
#ifndef OPENSSL_NO_BF
        FUNC13(" %s", FUNC0());
#endif
        FUNC13("\n");
    }
    if (cflags)
        FUNC13("%s\n", FUNC7(OPENSSL_CFLAGS));
    if (dir)
        FUNC13("%s\n", FUNC7(OPENSSL_DIR));
    if (engdir)
        FUNC13("%s\n", FUNC7(OPENSSL_ENGINES_DIR));
    if (moddir)
        FUNC13("%s\n", FUNC7(OPENSSL_MODULES_DIR));
    if (seed) {
        const char *src = FUNC6(OPENSSL_INFO_SEED_SOURCE);
        FUNC13("Seeding source: %s\n", src ? src : "N/A");
    }
    if (cpuinfo)
        FUNC13("%s\n", FUNC7(OPENSSL_CPU_INFO));
    ret = 0;
 end:
    return ret;
}