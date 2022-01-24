#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
struct MPOpts {int /*<<< orphan*/  quiet; int /*<<< orphan*/  stream_dump; } ;
struct MPContext {scalar_t__ stop_play; int /*<<< orphan*/  global; struct MPOpts* opts; } ;
struct TYPE_6__ {int pos; int eof; } ;
typedef  TYPE_1__ stream_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ KEEP_PLAYING ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,int /*<<< orphan*/ ,char*,long long,long long) ; 
 int /*<<< orphan*/  MSGL_STATUS ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct MPContext*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 TYPE_1__* FUNC10 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

int FUNC12(struct MPContext *mpctx, const char *source_filename)
{
    struct MPOpts *opts = mpctx->opts;
    stream_t *stream = FUNC10(source_filename, mpctx->global);
    if (!stream)
        return -1;

    int64_t size = FUNC9(stream);

    FILE *dest = FUNC3(opts->stream_dump, "wb");
    if (!dest) {
        FUNC0(mpctx, "Error opening dump file: %s\n", FUNC7(errno));
        return -1;
    }

    bool ok = true;

    while (mpctx->stop_play == KEEP_PLAYING && ok) {
        if (!opts->quiet && ((stream->pos / (1024 * 1024)) % 2) == 1) {
            uint64_t pos = stream->pos;
            FUNC1(mpctx, MSGL_STATUS, "Dumping %lld/%lld...",
                   (long long int)pos, (long long int)size);
        }
        uint8_t buf[4096];
        int len = FUNC11(stream, buf, sizeof(buf));
        if (!len) {
            ok &= stream->eof;
            break;
        }
        ok &= FUNC5(buf, len, 1, dest) == 1;
        FUNC8(mpctx); // don't actually sleep
        FUNC6(mpctx); // but process input
    }

    ok &= FUNC2(dest) == 0;
    FUNC4(stream);
    return ok ? 0 : -1;
}