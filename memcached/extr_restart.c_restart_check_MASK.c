#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ (* ccb ) (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  data; int /*<<< orphan*/  tag; } ;
typedef  TYPE_1__ restart_data_cb ;
struct TYPE_6__ {char* line; int done; TYPE_1__* cb; int /*<<< orphan*/ * f; } ;
typedef  TYPE_2__ restart_cb_ctx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ RESTART_DONE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(const char *file) {
    // metadata is kept in a separate file.
    size_t flen = FUNC8(file);
    const char *ext = ".meta";
    char *metafile = FUNC1(1, flen + FUNC8(ext) + 1);
    FUNC6(metafile, file, flen);
    FUNC6(metafile+flen, ext, FUNC8(ext));

    FILE *f = FUNC3(metafile, "r");
    if (f == NULL) {
        FUNC4(stderr, "[restart] no metadata save file, starting with a clean cache\n");
        return -1;
    }

    restart_cb_ctx ctx;

    ctx.f = f;
    ctx.cb = NULL;
    ctx.line = NULL;
    ctx.done = false;
    if (FUNC7(&ctx, NULL, NULL) != RESTART_DONE) {
        // First line must be a tag, so read it in and set up the proper
        // callback here.
        FUNC4(stderr, "[restart] corrupt metadata file\n");
        // TODO: this should probably just return -1 and skip the reuse.
        FUNC0();
    }
    if (ctx.cb == NULL) {
        FUNC4(stderr, "[restart] Failed to read a tag from metadata file\n");
        FUNC0();
    }

    // loop call the callback, check result code.
    bool failed = false;
    while (!ctx.done) {
        restart_data_cb *cb = ctx.cb;
        if (cb->ccb(cb->tag, &ctx, cb->data) != 0) {
            failed = true;
            break;
        }
    }

    if (ctx.line)
        FUNC5(ctx.line);

    FUNC2(f);

    FUNC10(metafile);
    FUNC5(metafile);

    if (failed) {
        FUNC4(stderr, "[restart] failed to valiate metadata, starting with a clean cache\n");
        return -1;
    } else {
        return 0;
    }
}