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
struct track {int is_external; int no_default; int no_auto_select; void* external_filename; void* title; } ;
struct sh_stream {int type; char* title; } ;
struct mp_cancel {int dummy; } ;
struct demuxer_params {int is_top_level; int /*<<< orphan*/  force_format; } ;
struct demuxer {int /*<<< orphan*/  cancel; int /*<<< orphan*/  start_time; } ;
struct MPOpts {scalar_t__ rebase_start_time; int /*<<< orphan*/  audio_demuxer_name; int /*<<< orphan*/  sub_demuxer_name; } ;
struct MPContext {int num_tracks; int /*<<< orphan*/  playback_abort; scalar_t__ stop_play; int /*<<< orphan*/  global; struct MPOpts* opts; } ;
typedef  enum stream_type { ____Placeholder_stream_type } stream_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*,char*,...) ; 
#define  STREAM_AUDIO 129 
#define  STREAM_SUB 128 
 int STREAM_TYPE_COUNT ; 
 struct track* FUNC1 (struct MPContext*,struct demuxer*,struct sh_stream*) ; 
 int /*<<< orphan*/  FUNC2 (struct demuxer*) ; 
 int FUNC3 (struct demuxer*) ; 
 struct sh_stream* FUNC4 (struct demuxer*,int) ; 
 struct demuxer* FUNC5 (char*,struct demuxer_params*,struct mp_cancel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct demuxer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct MPContext*,struct demuxer*) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct mp_cancel*) ; 
 int /*<<< orphan*/  FUNC11 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC12 (struct MPContext*) ; 
 char* FUNC13 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ FUNC15 (char*,char*,int) ; 
 void* FUNC16 (struct track*,char*) ; 

int FUNC17(struct MPContext *mpctx, char *filename,
                         enum stream_type filter, struct mp_cancel *cancel)
{
    struct MPOpts *opts = mpctx->opts;
    if (!filename || FUNC10(cancel))
        return -1;

    char *disp_filename = filename;
    if (FUNC15(disp_filename, "memory://", 9) == 0)
        disp_filename = "memory://"; // avoid noise

    struct demuxer_params params = {
        .is_top_level = true,
    };

    switch (filter) {
    case STREAM_SUB:
        params.force_format = opts->sub_demuxer_name;
        break;
    case STREAM_AUDIO:
        params.force_format = opts->audio_demuxer_name;
        break;
    }

    FUNC12(mpctx);

    struct demuxer *demuxer =
        FUNC5(filename, &params, cancel, mpctx->global);
    if (demuxer)
        FUNC7(mpctx, demuxer);

    FUNC11(mpctx);

    // The command could have overlapped with playback exiting. (We don't care
    // if playback has started again meanwhile - weird, but not a problem.)
    if (mpctx->stop_play)
        goto err_out;

    if (!demuxer)
        goto err_out;

    if (filter != STREAM_SUB && opts->rebase_start_time)
        FUNC6(demuxer, -demuxer->start_time);

    bool has_any = false;
    for (int n = 0; n < FUNC3(demuxer); n++) {
        struct sh_stream *sh = FUNC4(demuxer, n);
        if (sh->type == filter || filter == STREAM_TYPE_COUNT) {
            has_any = true;
            break;
        }
    }

    if (!has_any) {
        char *tname = FUNC13(20, "%s ", FUNC14(filter));
        if (filter == STREAM_TYPE_COUNT)
            tname = "";
        FUNC0(mpctx, "No %sstreams in file %s.\n", tname, disp_filename);
        goto err_out;
    }

    int first_num = -1;
    for (int n = 0; n < FUNC3(demuxer); n++) {
        struct sh_stream *sh = FUNC4(demuxer, n);
        struct track *t = FUNC1(mpctx, demuxer, sh);
        t->is_external = true;
        if (sh->title && sh->title[0]) {
            t->title = FUNC16(t, sh->title);
        } else {
            t->title = FUNC16(t, FUNC8(disp_filename));
        }
        t->external_filename = FUNC16(t, filename);
        t->no_default = sh->type != filter;
        t->no_auto_select = t->no_default;
        if (first_num < 0 && (filter == STREAM_TYPE_COUNT || sh->type == filter))
            first_num = mpctx->num_tracks - 1;
    }

    FUNC9(demuxer->cancel, mpctx->playback_abort);

    return first_num;

err_out:
    FUNC2(demuxer);
    if (!FUNC10(cancel))
        FUNC0(mpctx, "Can not open external file %s.\n", disp_filename);
    return -1;
}