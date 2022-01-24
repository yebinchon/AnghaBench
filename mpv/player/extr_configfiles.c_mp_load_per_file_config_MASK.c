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
struct MPOpts {scalar_t__ use_filedir_conf; } ;
struct MPContext {char* filename; int /*<<< orphan*/  global; struct MPOpts* opts; } ;
typedef  int /*<<< orphan*/  cfg ;
typedef  int /*<<< orphan*/  bstr ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_LOCAL_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  MSGL_INFO ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (struct MPContext*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct MPContext *mpctx)
{
    struct MPOpts *opts = mpctx->opts;
    char *confpath;
    char cfg[512];
    const char *file = mpctx->filename;

    if (opts->use_filedir_conf) {
        if (FUNC6(cfg, sizeof(cfg), "%s.conf", file) >= sizeof(cfg)) {
            FUNC0(mpctx, "Filename is too long, can not load file or "
                              "directory specific config files\n");
            return;
        }

        char *name = FUNC2(cfg);

        bstr dir = FUNC3(cfg);
        char *dircfg = FUNC5(NULL, dir, FUNC1("mpv.conf"));
        FUNC8(mpctx, dircfg, FILE_LOCAL_FLAGS, MSGL_INFO);
        FUNC7(dircfg);

        if (FUNC8(mpctx, cfg, FILE_LOCAL_FLAGS, MSGL_INFO))
            return;

        if ((confpath = FUNC4(NULL, mpctx->global, name))) {
            FUNC8(mpctx, confpath, FILE_LOCAL_FLAGS, MSGL_INFO);

            FUNC7(confpath);
        }
    }
}