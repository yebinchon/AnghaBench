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
struct demuxer {int /*<<< orphan*/ * stream; int /*<<< orphan*/ * priv; TYPE_1__* desc; } ;
struct demux_internal {scalar_t__ total_bytes; scalar_t__ owns_stream; int /*<<< orphan*/ * cache; int /*<<< orphan*/ * current_range; TYPE_2__* d_thread; int /*<<< orphan*/ * recorder; struct demuxer* d_user; } ;
struct TYPE_4__ {int /*<<< orphan*/ * priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* close ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct demuxer*) ; 
 int /*<<< orphan*/  FUNC2 (struct demux_internal*) ; 
 int /*<<< orphan*/  FUNC3 (struct demux_internal*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct demux_internal *in)
{
    struct demuxer *demuxer = in->d_user;

    if (in->recorder) {
        FUNC5(in->recorder);
        in->recorder = NULL;
    }

    FUNC2(in);

    if (demuxer->desc->close)
        demuxer->desc->close(in->d_thread);
    demuxer->priv = NULL;
    in->d_thread->priv = NULL;

    FUNC1(demuxer);
    FUNC0(in->total_bytes == 0);

    in->current_range = NULL;
    FUNC3(in);

    FUNC7(in->cache);
    in->cache = NULL;

    if (in->owns_stream)
        FUNC4(demuxer->stream);
    demuxer->stream = NULL;
}