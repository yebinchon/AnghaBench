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
struct mp_recorder_sink {int dummy; } ;
struct demux_packet {size_t stream; } ;
struct demux_internal {int dumper; scalar_t__ dumper_status; int /*<<< orphan*/ * streams; } ;

/* Variables and functions */
 scalar_t__ CONTROL_ERROR ; 
 scalar_t__ CONTROL_TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct demux_internal*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_recorder_sink*,struct demux_packet*) ; 
 struct mp_recorder_sink* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct demux_internal *in, struct demux_packet *dp)
{
    FUNC1(in->dumper);
    FUNC1(in->dumper_status == CONTROL_TRUE);

    struct mp_recorder_sink *sink =
        FUNC3(in->dumper, in->streams[dp->stream]);
    if (sink) {
        FUNC2(sink, dp);
    } else {
        FUNC0(in, "New stream appeared; stopping recording.\n");
        in->dumper_status = CONTROL_ERROR;
    }
}