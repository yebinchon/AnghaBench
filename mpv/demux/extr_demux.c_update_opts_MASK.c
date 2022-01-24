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
struct demux_opts {int max_bytes; int seekable_cache; int enable_cache; char* record_file; scalar_t__ disk_cache; int /*<<< orphan*/  min_secs_cache; scalar_t__ max_bytes_bw; scalar_t__ min_secs; } ;
struct demux_internal {int max_bytes; int seekable_cache; int using_network_cache_opts; char* record_filename; int /*<<< orphan*/  can_record; int /*<<< orphan*/  enable_recording; int /*<<< orphan*/ * recorder; scalar_t__ cache; int /*<<< orphan*/  log; int /*<<< orphan*/  global; scalar_t__ max_bytes_bw; scalar_t__ min_secs; int /*<<< orphan*/  can_cache; TYPE_1__* d_thread; struct demux_opts* opts; } ;
struct TYPE_2__ {int is_streaming; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct demux_internal*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct demux_internal*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct demux_internal*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct demux_internal*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (struct demux_internal*,char*) ; 

__attribute__((used)) static void FUNC10(struct demux_internal *in)
{
    struct demux_opts *opts = in->opts;

    in->min_secs = opts->min_secs;
    in->max_bytes = opts->max_bytes;
    in->max_bytes_bw = opts->max_bytes_bw;

    int seekable = opts->seekable_cache;
    bool is_streaming = in->d_thread->is_streaming;
    bool use_cache = is_streaming;
    if (opts->enable_cache >= 0)
        use_cache = opts->enable_cache == 1;

    if (use_cache) {
        in->min_secs = FUNC0(in->min_secs, opts->min_secs_cache);
        if (seekable < 0)
            seekable = 1;
    }
    in->seekable_cache = seekable == 1;
    in->using_network_cache_opts = is_streaming && use_cache;

    if (!in->seekable_cache)
        in->max_bytes_bw = 0;

    if (!in->can_cache) {
        in->seekable_cache = false;
        in->min_secs = 0;
        in->max_bytes = 1;
        in->max_bytes_bw = 0;
        in->using_network_cache_opts = false;
    }

    if (in->seekable_cache && opts->disk_cache && !in->cache) {
        in->cache = FUNC3(in->global, in->log);
        if (!in->cache)
            FUNC1(in, "Failed to create file cache.\n");
    }

    // The filename option really decides whether recording should be active.
    // So if the filename changes, act upon it.
    char *old = in->record_filename ? in->record_filename : "";
    char *new = opts->record_file ? opts->record_file : "";
    if (FUNC7(old, new) != 0) {
        if (in->recorder) {
            FUNC2(in, "Stopping recording.\n");
            FUNC5(in->recorder);
            in->recorder = NULL;
        }
        in->record_filename = FUNC9(in, opts->record_file);
        FUNC8(in->record_filename);
        // Note: actual recording only starts once packets are read. It may be
        // important to delay creating in->recorder to that point, because the
        // demuxer might detect more streams until finding the first packet.
        in->enable_recording = in->can_record;
    }

    // In case the cache was reduced in size.
    FUNC6(in);

    // In case the seekable cache was disabled.
    FUNC4(in);
}