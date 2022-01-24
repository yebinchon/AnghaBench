#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct playlist_entry {int num_redirects; char** redirects; int /*<<< orphan*/  filename; } ;
struct demuxer {scalar_t__ partially_seekable; int /*<<< orphan*/  seekable; } ;
struct MPContext {char** resume_defaults; int /*<<< orphan*/  cached_watch_later_configdir; int /*<<< orphan*/  global; struct demuxer* demuxer; struct playlist_entry* playing; } ;
struct TYPE_4__ {int len; } ;
typedef  TYPE_1__ bstr ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*) ; 
 double MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  M_PROPERTY_GET_STRING ; 
 int M_PROPERTY_OK ; 
 char** backup_properties ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_1__,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 double FUNC6 (struct MPContext*) ; 
 TYPE_1__ FUNC7 (char*) ; 
 char* FUNC8 (struct MPContext*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (char const*,int /*<<< orphan*/ ,char**,struct MPContext*) ; 
 scalar_t__ FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,char*) ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 int FUNC16 (char*) ; 
 scalar_t__ FUNC17 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (struct MPContext*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct MPContext*,char*) ; 

void FUNC21(struct MPContext *mpctx)
{
    struct playlist_entry *cur = mpctx->playing;
    char *conffile = NULL;
    if (!cur)
        goto exit;

    struct demuxer *demux = mpctx->demuxer;
    if (demux && (!demux->seekable || demux->partially_seekable)) {
        FUNC0(mpctx, "Not seekable - not saving state.\n");
        goto exit;
    }

    conffile = FUNC8(mpctx, cur->filename);
    if (!conffile)
        goto exit;

    FUNC10(mpctx->global, mpctx->cached_watch_later_configdir);

    FUNC0(mpctx, "Saving state.\n");

    FILE *file = FUNC4(conffile, "wb");
    if (!file)
        goto exit;

    FUNC19(mpctx, file, cur->filename);

    double pos = FUNC6(mpctx);
    if (pos != MP_NOPTS_VALUE)
        FUNC5(file, "start=%f\n", pos);
    for (int i = 0; backup_properties[i]; i++) {
        const char *pname = backup_properties[i];
        char *val = NULL;
        int r = FUNC12(pname, M_PROPERTY_GET_STRING, &val, mpctx);
        if (r == M_PROPERTY_OK) {
            if (FUNC17(pname, "options/", 8) == 0)
                pname += 8;
            // Only store it if it's different from the initial value.
            char *prev = mpctx->resume_defaults[i];
            if (!prev || FUNC15(prev, val) != 0) {
                if (FUNC13(val)) {
                    // e.g. '%6%STRING'
                    FUNC5(file, "%s=%%%d%%%s\n", pname, (int)FUNC16(val), val);
                } else {
                    FUNC5(file, "%s=%s\n", pname, val);
                }
            }
        }
        FUNC18(val);
    }
    FUNC3(file);

    // This allows us to recursively resume directories etc., whose entries are
    // expanded the first time it's "played". For example, if "/a/b/c.mkv" is
    // the current entry, then we want to resume this file if the user does
    // "mpv /a". This would expand to the directory entries in "/a", and if
    // "/a/a.mkv" is not the first entry, this would be played.
    // Here, we write resume entries for "/a" and "/a/b".
    // (Unfortunately, this will leave stray resume files on resume, because
    // obviously it resumes only from one of those paths.)
    for (int n = 0; n < cur->num_redirects; n++)
        FUNC20(mpctx, cur->redirects[n]);
    // And at last, for local directories, we write an entry for each path
    // prefix, so the user can resume from an arbitrary directory. This starts
    // with the first redirect (all other redirects are further prefixes).
    if (cur->num_redirects) {
        char *path = cur->redirects[0];
        char tmp[4096];
        if (!FUNC9(FUNC1(path)) && FUNC16(path) < sizeof(tmp)) {
            FUNC14(tmp, sizeof(tmp), "%s", path);
            for (;;) {
                bstr dir = FUNC7(tmp);
                if (dir.len == FUNC16(tmp) || !dir.len || FUNC2(dir, "."))
                    break;

                tmp[dir.len] = '\0';
                if (FUNC16(tmp) >= 2) // keep "/"
                    FUNC11(tmp);
                FUNC20(mpctx, tmp);
            }
        }
    }

exit:
    FUNC18(conffile);
}