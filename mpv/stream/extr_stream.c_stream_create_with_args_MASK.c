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
struct stream_open_args {int flags; int /*<<< orphan*/  url; TYPE_1__* global; int /*<<< orphan*/  cancel; scalar_t__ sinfo; } ;
struct stream {int dummy; } ;
struct mp_log {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int STREAM_NO_MATCH ; 
 int STREAM_OK ; 
 int STREAM_SILENT ; 
 int STREAM_UNSAFE ; 
 int STREAM_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_log*,char*,...) ; 
 struct mp_log* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (scalar_t__,struct stream_open_args*,struct stream**) ; 
 scalar_t__* stream_list ; 
 int /*<<< orphan*/  FUNC5 (struct mp_log*) ; 

int FUNC6(struct stream_open_args *args, struct stream **ret)

{
    FUNC0(args->url);

    int r = STREAM_NO_MATCH;
    *ret = NULL;

    // Open stream proper
    if (args->sinfo) {
        r = FUNC4(args->sinfo, args, ret);
    } else {
        for (int i = 0; stream_list[i]; i++) {
            r = FUNC4(stream_list[i], args, ret);
            if (r == STREAM_OK)
                break;
            if (r == STREAM_NO_MATCH || r == STREAM_UNSUPPORTED)
                continue;
            if (r == STREAM_UNSAFE)
                continue;
            break;
        }
    }

    if (!*ret && !(args->flags & STREAM_SILENT) && !FUNC1(args->cancel))
    {
        struct mp_log *log = FUNC3(NULL, args->global->log, "!stream");

        if (r == STREAM_UNSAFE) {
            FUNC2(log, "\nRefusing to load potentially unsafe URL from a playlist.\n"
                   "Use --playlist=file or the --load-unsafe-playlists option to "
                   "load it anyway.\n\n");
        } else if (r == STREAM_NO_MATCH || r == STREAM_UNSUPPORTED) {
            FUNC2(log, "No protocol handler found to open URL %s\n", args->url);
            FUNC2(log, "The protocol is either unsupported, or was disabled "
                        "at compile-time.\n");
        } else {
            FUNC2(log, "Failed to open %s.\n", args->url);
        }

        FUNC5(log);
    }

    return r;
}