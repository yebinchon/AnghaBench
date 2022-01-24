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
struct demux_cache {scalar_t__ fd; int /*<<< orphan*/  filename; TYPE_1__* opts; scalar_t__ need_unlink; } ;
struct TYPE_2__ {int unlink_files; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct demux_cache*,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *p)
{
    struct demux_cache *cache = p;

    if (cache->fd >= 0)
        FUNC1(cache->fd);

    if (cache->need_unlink && cache->opts->unlink_files >= 1) {
        if (FUNC2(cache->filename))
            FUNC0(cache, "Failed to delete cache temporary file.\n");
    }
}