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
struct demux_internal {int dummy; } ;
struct demux_cached_range {int num_streams; int num_metadata; int /*<<< orphan*/ * metadata; int /*<<< orphan*/ * streams; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct demux_cached_range*) ; 

__attribute__((used)) static void FUNC3(struct demux_internal *in,
                               struct demux_cached_range *range)
{
    for (int n = 0; n < range->num_streams; n++)
        FUNC0(range->streams[n]);

    for (int n = 0; n < range->num_metadata; n++)
        FUNC1(range->metadata[n]);
    range->num_metadata = 0;

    FUNC2(range);
}