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
struct mp_recorder_sink {int dummy; } ;
struct demux_packet {size_t stream; } ;
struct demux_internal {int enable_recording; scalar_t__ dumper_status; int /*<<< orphan*/ * recorder; int /*<<< orphan*/ * streams; TYPE_1__* opts; } ;
struct TYPE_2__ {scalar_t__* record_file; } ;

/* Variables and functions */
 scalar_t__ CONTROL_OK ; 
 int /*<<< orphan*/  FUNC0 (struct demux_internal*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_recorder_sink*,struct demux_packet*) ; 
 struct mp_recorder_sink* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct demux_internal*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct demux_internal*,struct demux_packet*) ; 

__attribute__((used)) static void FUNC6(struct demux_internal *in, struct demux_packet *dp)
{
    // (should preferably be outside of the lock)
    if (in->enable_recording && !in->recorder &&
        in->opts->record_file && in->opts->record_file[0])
    {
        // Later failures shouldn't make it retry and overwrite the previously
        // recorded file.
        in->enable_recording = false;

        in->recorder = FUNC4(in, in->opts->record_file);
        if (!in->recorder)
            FUNC0(in, "Disabling recording.\n");
    }

    if (in->recorder) {
        struct mp_recorder_sink *sink =
            FUNC3(in->recorder, in->streams[dp->stream]);
        if (sink) {
            FUNC2(sink, dp);
        } else {
            FUNC0(in, "New stream appeared; stopping recording.\n");
            FUNC1(in->recorder);
            in->recorder = NULL;
        }
    }

    if (in->dumper_status == CONTROL_OK)
        FUNC5(in, dp);
}