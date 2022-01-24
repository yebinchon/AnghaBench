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
struct demuxer {struct demux_internal* in; } ;
struct demux_packet {int dummy; } ;
struct demux_internal {int num_streams; int reading; int /*<<< orphan*/  lock; TYPE_1__** streams; int /*<<< orphan*/  blocked; int /*<<< orphan*/  threading; } ;
struct TYPE_2__ {int /*<<< orphan*/  ds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct demux_packet**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct demux_internal*) ; 

struct demux_packet *FUNC5(struct demuxer *demuxer)
{
    struct demux_internal *in = demuxer->in;
    FUNC2(&in->lock);
    FUNC0(!in->threading); // doesn't work with threading
    struct demux_packet *out_pkt = NULL;
    bool read_more = true;
    while (read_more && !in->blocked) {
        bool all_eof = true;
        for (int n = 0; n < in->num_streams; n++) {
            in->reading = true; // force read_packet() to read
            int r = FUNC1(in->streams[n]->ds, &out_pkt);
            if (r > 0)
                goto done;
            if (r == 0)
                all_eof = false;
        }
        // retry after calling this
        read_more = FUNC4(in);
        read_more &= !all_eof;
    }
done:
    FUNC3(&in->lock);
    return out_pkt;
}