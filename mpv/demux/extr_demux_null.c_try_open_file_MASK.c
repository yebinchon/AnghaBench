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
struct demuxer {int seekable; int /*<<< orphan*/  filename; } ;
typedef  enum demux_check { ____Placeholder_demux_check } demux_check ;

/* Variables and functions */
 int DEMUX_CHECK_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct demuxer *demux, enum demux_check check)
{
    if (!FUNC1(FUNC0(demux->filename), "null://") &&
        check != DEMUX_CHECK_REQUEST)
        return -1;
    demux->seekable = true;
    return 0;
}