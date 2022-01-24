#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct block_info {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  num_blocks; struct block_info* blocks; } ;
typedef  TYPE_1__ mkv_demuxer_t ;
struct TYPE_6__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ demuxer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct block_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC3(demuxer_t *demuxer, struct block_info *block)
{
    mkv_demuxer_t *mkv_d = demuxer->priv;

    if (!mkv_d->num_blocks) {
        int res = FUNC2(demuxer);
        if (res < 1)
            return res;

        FUNC1(mkv_d->num_blocks);
    }

    *block = mkv_d->blocks[0];
    FUNC0(mkv_d->blocks, mkv_d->num_blocks, 0);
    return 1;
}