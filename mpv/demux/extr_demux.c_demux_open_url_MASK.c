#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stream {int dummy; } ;
struct mpv_global {int dummy; } ;
struct mp_cancel {int dummy; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct demuxer_params {int stream_flags; int demuxer_failed; struct stream* external_stream; TYPE_1__ init_fragment; int /*<<< orphan*/  member_0; } ;
struct demuxer {int /*<<< orphan*/  cancel; int /*<<< orphan*/  in; } ;

/* Variables and functions */
 int STREAM_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct stream* FUNC1 (struct mpv_global*,struct mp_cancel*,TYPE_1__,struct stream*) ; 
 struct demuxer* FUNC2 (struct stream*,struct mp_cancel*,struct demuxer_params*,struct mpv_global*) ; 
 int /*<<< orphan*/  FUNC3 (struct stream*) ; 
 struct mp_cancel* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_cancel*,struct mp_cancel*) ; 
 struct stream* FUNC6 (char const*,int,struct mp_cancel*,struct mpv_global*) ; 
 int /*<<< orphan*/  FUNC7 (struct mp_cancel*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct mp_cancel*) ; 

struct demuxer *FUNC9(const char *url,
                               struct demuxer_params *params,
                               struct mp_cancel *cancel,
                               struct mpv_global *global)
{
    struct demuxer_params dummy = {0};
    if (!params)
        params = &dummy;
    struct mp_cancel *priv_cancel = FUNC4(NULL);
    if (cancel)
        FUNC5(priv_cancel, cancel);
    struct stream *s = params->external_stream;
    if (!s) {
        s = FUNC6(url, STREAM_READ | params->stream_flags,
                          priv_cancel, global);
        if (s && params->init_fragment.len) {
            s = FUNC1(global, priv_cancel,
                                             params->init_fragment, s);
        }
    }
    if (!s) {
        FUNC7(priv_cancel);
        return NULL;
    }
    struct demuxer *d = FUNC2(s, priv_cancel, params, global);
    if (d) {
        FUNC8(d->in, priv_cancel);
        FUNC0(d->cancel);
    } else {
        params->demuxer_failed = true;
        if (!params->external_stream)
            FUNC3(s);
        FUNC7(priv_cancel);
    }
    return d;
}