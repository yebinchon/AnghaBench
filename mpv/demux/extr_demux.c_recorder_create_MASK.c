#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sh_stream {TYPE_2__* ds; } ;
struct mp_recorder {int dummy; } ;
struct demux_internal {int num_streams; TYPE_1__* d_thread; struct sh_stream** streams; } ;
struct TYPE_4__ {scalar_t__ selected; } ;
struct TYPE_3__ {int /*<<< orphan*/  global; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sh_stream**,int,struct sh_stream*) ; 
 struct mp_recorder* FUNC1 (int /*<<< orphan*/ ,char const*,struct sh_stream**,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_stream**) ; 

__attribute__((used)) static struct mp_recorder *FUNC3(struct demux_internal *in,
                                           const char *dst)
{
    struct sh_stream **streams = NULL;
    int num_streams = 0;
    for (int n = 0; n < in->num_streams; n++) {
        struct sh_stream *stream = in->streams[n];
        if (stream->ds->selected)
            FUNC0(NULL, streams, num_streams, stream);
    }
    struct mp_recorder *res = FUNC1(in->d_thread->global, dst,
                                                 streams, num_streams);
    FUNC2(streams);
    return res;
}