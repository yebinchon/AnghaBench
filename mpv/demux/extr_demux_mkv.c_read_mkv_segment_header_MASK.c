#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_15__ {int /*<<< orphan*/  eof; } ;
typedef  TYPE_2__ stream_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_16__ {TYPE_1__* params; TYPE_2__* stream; } ;
typedef  TYPE_3__ demuxer_t ;
struct TYPE_14__ {int matroska_wanted_segment; } ;

/* Variables and functions */
 scalar_t__ EBML_UINT_INVALID ; 
 scalar_t__ MATROSKA_ID_SEGMENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC9(demuxer_t *demuxer, int64_t *segment_end)
{
    stream_t *s = demuxer->stream;
    int num_skip = 0;
    if (demuxer->params)
        num_skip = demuxer->params->matroska_wanted_segment;

    while (!s->eof) {
        if (FUNC3(s) != MATROSKA_ID_SEGMENT) {
            FUNC1(demuxer, "segment not found\n");
            return 0;
        }
        FUNC0(demuxer, "+ a segment...\n");
        uint64_t len = FUNC4(s);
        *segment_end = (len == EBML_UINT_INVALID) ? 0 : FUNC8(s) + len;
        if (num_skip <= 0)
            return 1;
        num_skip--;
        FUNC0(demuxer, "  (skipping)\n");
        if (*segment_end <= 0)
            break;
        if (*segment_end >= FUNC6(s))
            return 0;
        if (!FUNC7(s, *segment_end)) {
            FUNC2(demuxer, "Failed to seek in file\n");
            return 0;
        }
        // Segments are like concatenated Matroska files
        if (!FUNC5(demuxer))
            return 0;
    }

    FUNC1(demuxer, "End of file, no further segments.\n");
    return 0;
}