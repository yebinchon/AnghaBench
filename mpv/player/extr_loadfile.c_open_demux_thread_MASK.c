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
struct sh_stream {int dummy; } ;
struct demuxer_params {int stream_record; int is_top_level; scalar_t__ demuxer_failed; int /*<<< orphan*/  stream_flags; int /*<<< orphan*/  force_format; } ;
struct demuxer {int /*<<< orphan*/  fully_read; } ;
struct MPContext {int /*<<< orphan*/  open_done; int /*<<< orphan*/  open_res_error; int /*<<< orphan*/  open_url; scalar_t__ open_for_prefetch; struct demuxer* open_res_demuxer; int /*<<< orphan*/  global; int /*<<< orphan*/  open_cancel; int /*<<< orphan*/  open_url_flags; int /*<<< orphan*/  open_format; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPV_ERROR_LOADING_FAILED ; 
 int /*<<< orphan*/  MPV_ERROR_UNKNOWN_FORMAT ; 
 int /*<<< orphan*/  MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct demuxer*) ; 
 struct sh_stream* FUNC3 (struct demuxer*,int) ; 
 struct demuxer* FUNC4 (int /*<<< orphan*/ ,struct demuxer_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct demuxer*,int /*<<< orphan*/ ,struct MPContext*) ; 
 int /*<<< orphan*/  FUNC6 (struct demuxer*) ; 
 int /*<<< orphan*/  FUNC7 (struct demuxer*) ; 
 int /*<<< orphan*/  FUNC8 (struct demuxer*,struct sh_stream*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  wakeup_demux ; 

__attribute__((used)) static void *FUNC11(void *ctx)
{
    struct MPContext *mpctx = ctx;

    FUNC10("opener");

    struct demuxer_params p = {
        .force_format = mpctx->open_format,
        .stream_flags = mpctx->open_url_flags,
        .stream_record = true,
        .is_top_level = true,
    };
    struct demuxer *demux =
        FUNC4(mpctx->open_url, &p, mpctx->open_cancel, mpctx->global);
    mpctx->open_res_demuxer = demux;

    if (demux) {
        FUNC0(mpctx, "Opening done: %s\n", mpctx->open_url);

        if (mpctx->open_for_prefetch && !demux->fully_read) {
            int num_streams = FUNC2(demux);
            for (int n = 0; n < num_streams; n++) {
                struct sh_stream *sh = FUNC3(demux, n);
                FUNC8(demux, sh, MP_NOPTS_VALUE, true);
            }

            FUNC5(demux, wakeup_demux, mpctx);
            FUNC7(demux);
            FUNC6(demux);
        }
    } else {
        FUNC0(mpctx, "Opening failed or was aborted: %s\n", mpctx->open_url);

        if (p.demuxer_failed) {
            mpctx->open_res_error = MPV_ERROR_UNKNOWN_FORMAT;
        } else {
            mpctx->open_res_error = MPV_ERROR_LOADING_FAILED;
        }
    }

    FUNC1(&mpctx->open_done, true);
    FUNC9(mpctx);
    return NULL;
}