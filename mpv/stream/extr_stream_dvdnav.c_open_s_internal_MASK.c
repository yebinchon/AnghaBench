#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct priv {char* device; scalar_t__ track; scalar_t__ title; TYPE_4__* opts; int /*<<< orphan*/ * dvdnav; } ;
struct TYPE_10__ {char* demuxer; char* lavf_type; int /*<<< orphan*/  close; int /*<<< orphan*/  control; int /*<<< orphan*/  fill_buffer; int /*<<< orphan*/  global; struct priv* priv; } ;
typedef  TYPE_1__ stream_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  dvdnav_t ;
struct TYPE_11__ {char* device; int angle; } ;

/* Variables and functions */
 char* DEFAULT_DVD_DEVICE ; 
 scalar_t__ DVDNAV_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 int STREAM_ERROR ; 
 int STREAM_OK ; 
 int STREAM_UNSUPPORTED ; 
 scalar_t__ TITLE_LONGEST ; 
 int /*<<< orphan*/  control ; 
 int /*<<< orphan*/  dvd_conf ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int**,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  fill_buffer ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 
 char* FUNC10 (int,int) ; 
 TYPE_4__* FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  stream_dvdnav_close ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static int FUNC14(stream_t *stream)
{
    struct priv *priv, *p;
    priv = p = stream->priv;
    char *filename;

    p->opts = FUNC11(stream, stream->global, &dvd_conf);

    if (p->device && p->device[0])
        filename = p->device;
    else if (p->opts->device && p->opts->device[0])
        filename = p->opts->device;
    else
        filename = DEFAULT_DVD_DEVICE;
    if (!FUNC12(stream, filename)) {
        FUNC0(stream, "Couldn't open DVD device: %s\n",
                filename);
        return STREAM_UNSUPPORTED;
    }

    if (p->track == TITLE_LONGEST) { // longest
        dvdnav_t *dvdnav = priv->dvdnav;
        uint64_t best_length = 0;
        int best_title = -1;
        int32_t num_titles;
        if (FUNC7(dvdnav, &num_titles) == DVDNAV_STATUS_OK) {
            FUNC3(stream, "List of available titles:\n");
            for (int n = 1; n <= num_titles; n++) {
                uint64_t *parts = NULL, duration = 0;
                FUNC5(dvdnav, n, &parts, &duration);
                if (parts) {
                    if (duration > best_length) {
                        best_length = duration;
                        best_title = n;
                    }
                    if (duration > 90000) { // arbitrarily ignore <1s titles
                        char *time = FUNC10(duration / 90000, false);
                        FUNC3(stream, "title: %3d duration: %s\n",
                                   n - 1, time);
                        FUNC13(time);
                    }
                    FUNC9(parts);
                }
            }
        }
        p->track = best_title - 1;
        FUNC2(stream, "Selecting title %d.\n", p->track);
    }

    if (p->track >= 0) {
        priv->title = p->track;
        if (FUNC8(priv->dvdnav, p->track + 1) != DVDNAV_STATUS_OK) {
            FUNC1(stream, "dvdnav_stream, couldn't select title %d, error '%s'\n",
                   p->track, FUNC6(priv->dvdnav));
            return STREAM_UNSUPPORTED;
        }
    } else {
        FUNC1(stream, "DVD menu support has been removed.\n");
        return STREAM_ERROR;
    }
    if (p->opts->angle > 1)
        FUNC4(priv->dvdnav, p->opts->angle);

    stream->fill_buffer = fill_buffer;
    stream->control = control;
    stream->close = stream_dvdnav_close;
    stream->demuxer = "+disc";
    stream->lavf_type = "mpeg";

    return STREAM_OK;
}