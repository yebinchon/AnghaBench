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
typedef  int /*<<< orphan*/  uint8_t ;
struct MPOpts {char* watch_later_directory; scalar_t__ ignore_path_in_watch_later_config; } ;
struct MPContext {char* cached_watch_later_configdir; int /*<<< orphan*/  global; struct MPOpts* opts; } ;
typedef  int /*<<< orphan*/  bstr ;

/* Variables and functions */
 int /*<<< orphan*/  MP_WATCH_LATER_CONF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (struct MPContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (struct MPContext*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (void*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 char* FUNC9 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (void*,char*) ; 

__attribute__((used)) static char *FUNC13(struct MPContext *mpctx,
                                                    const char *fname)
{
    struct MPOpts *opts = mpctx->opts;
    char *res = NULL;
    void *tmp = FUNC11(NULL);
    const char *realpath = fname;
    bstr bfname = FUNC1(fname);
    if (!FUNC6(bfname)) {
        if (opts->ignore_path_in_watch_later_config) {
            realpath = FUNC2(fname);
        } else {
            char *cwd = FUNC5(tmp);
            if (!cwd)
                goto exit;
            realpath = FUNC7(tmp, cwd, fname);
        }
    }
    uint8_t md5[16];
    FUNC0(md5, realpath, FUNC8(realpath));
    char *conf = FUNC12(tmp, "");
    for (int i = 0; i < 16; i++)
        conf = FUNC9(conf, "%02X", md5[i]);

    if (!mpctx->cached_watch_later_configdir) {
        char *wl_dir = mpctx->opts->watch_later_directory;
        if (wl_dir && wl_dir[0]) {
            mpctx->cached_watch_later_configdir =
                FUNC4(mpctx, mpctx->global, wl_dir);
        }
    }

    if (!mpctx->cached_watch_later_configdir) {
        mpctx->cached_watch_later_configdir =
            FUNC3(mpctx, mpctx->global, MP_WATCH_LATER_CONF);
    }

    if (mpctx->cached_watch_later_configdir)
        res = FUNC7(NULL, mpctx->cached_watch_later_configdir, conf);

exit:
    FUNC10(tmp);
    return res;
}