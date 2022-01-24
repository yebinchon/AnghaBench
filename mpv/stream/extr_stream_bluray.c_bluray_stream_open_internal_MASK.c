#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct bluray_priv_s {char* cfg_device; int num_titles; int current_angle; int current_title; scalar_t__ use_nav; int /*<<< orphan*/ * bd; } ;
struct TYPE_12__ {char* demuxer; struct bluray_priv_s* priv; int /*<<< orphan*/  control; int /*<<< orphan*/  close; int /*<<< orphan*/  fill_buffer; int /*<<< orphan*/  log; int /*<<< orphan*/  global; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_13__ {int duration; int /*<<< orphan*/  playlist; } ;
typedef  TYPE_2__ BLURAY_TITLE_INFO ;
typedef  int /*<<< orphan*/  BLURAY ;

/* Variables and functions */
 int BLURAY_DEFAULT_TITLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  MSGL_DEBUG ; 
 int STREAM_ERROR ; 
 int STREAM_OK ; 
 int STREAM_UNSUPPORTED ; 
 int /*<<< orphan*/  TITLES_RELEVANT ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bluray_stream_close ; 
 int /*<<< orphan*/  bluray_stream_control ; 
 int /*<<< orphan*/  bluray_stream_fill_buffer ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct bluray_priv_s*) ; 
 int /*<<< orphan*/  m_option_type_string ; 
 char* FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

__attribute__((used)) static int FUNC17(stream_t *s)
{
    struct bluray_priv_s *b = s->priv;

    char *device = NULL;
    /* find the requested device */
    if (b->cfg_device && b->cfg_device[0]) {
        device = b->cfg_device;
    } else {
        FUNC14(s->global, "bluray-device", &m_option_type_string,
                           &device);
    }

    if (!device || !device[0]) {
        FUNC0(s, "No Blu-ray device/location was specified ...\n");
        return STREAM_UNSUPPORTED;
    }

    if (!FUNC13(s->log, MSGL_DEBUG))
        FUNC9(0);

    /* open device */
    BLURAY *bd = FUNC8(device, NULL);
    if (!bd) {
        FUNC0(s, "Couldn't open Blu-ray device: %s\n", device);
        return STREAM_UNSUPPORTED;
    }
    b->bd = bd;

    if (!FUNC10(s)) {
        FUNC11(b);
        return STREAM_UNSUPPORTED;
    }

    int title_guess = BLURAY_DEFAULT_TITLE;
    if (b->use_nav) {
        FUNC1(s, "BluRay menu support has been removed.\n");
        return STREAM_ERROR;
    } else {
        /* check for available titles on disc */
        b->num_titles = FUNC7(bd, TITLES_RELEVANT, 0);
        if (!b->num_titles) {
            FUNC0(s, "Can't find any Blu-ray-compatible title here.\n");
            FUNC11(b);
            return STREAM_UNSUPPORTED;
        }

        FUNC2(s, "List of available titles:\n");

        /* parse titles information */
        uint64_t max_duration = 0;
        for (int i = 0; i < b->num_titles; i++) {
            BLURAY_TITLE_INFO *ti = FUNC6(bd, i, 0);
            if (!ti)
                continue;

            char *time = FUNC12(ti->duration / 90000, false);
            FUNC2(s, "idx: %3d duration: %s (playlist: %05d.mpls)\n",
                       i, time, ti->playlist);
            FUNC16(time);

            /* try to guess which title may contain the main movie */
            if (ti->duration > max_duration) {
                max_duration = ti->duration;
                title_guess = i;
            }

            FUNC4(ti);
        }
    }

    // these should be set before any callback
    b->current_angle = -1;
    b->current_title = -1;

    // initialize libbluray event queue
    FUNC5(bd, NULL);

    FUNC15(s, title_guess);

    s->fill_buffer = bluray_stream_fill_buffer;
    s->close       = bluray_stream_close;
    s->control     = bluray_stream_control;
    s->priv        = b;
    s->demuxer     = "+disc";

    FUNC3(s, "Blu-ray successfully opened.\n");

    return STREAM_OK;
}