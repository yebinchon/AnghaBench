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
struct sh_stream {struct demux_stream* ds; } ;
struct demux_stream {struct demux_internal* in; } ;
struct demux_packet {int dummy; } ;
struct demux_internal {int /*<<< orphan*/  lock; scalar_t__ blocked; scalar_t__ threading; } ;

/* Variables and functions */
 int FUNC0 (struct demux_stream*,struct demux_packet**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct demux_internal*) ; 

int FUNC4(struct sh_stream *sh, struct demux_packet **out_pkt)
{
    struct demux_stream *ds = sh ? sh->ds : NULL;
    *out_pkt = NULL;
    if (!ds)
        return -1;
    struct demux_internal *in = ds->in;

    FUNC1(&in->lock);
    int r = -1;
    while (1) {
        r = FUNC0(ds, out_pkt);
        if (in->threading || in->blocked || r != 0)
            break;
        // Needs to actually read packets until we got a packet or EOF.
        FUNC3(in);
    }
    FUNC2(&in->lock);
    return r;
}