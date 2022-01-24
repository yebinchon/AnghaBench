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
struct demux_cache {size_t file_pos; int /*<<< orphan*/  file_size; int /*<<< orphan*/  fd; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct demux_cache*,char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,void*,size_t) ; 

__attribute__((used)) static bool FUNC4(struct demux_cache *cache, void *ptr, size_t len)
{
    ssize_t res = FUNC3(cache->fd, ptr, len);

    if (res < 0) {
        FUNC1(cache, "Failed to write to cache file: %s\n", FUNC2(errno));
        return false;
    }

    cache->file_pos += res;
    cache->file_size = FUNC0(cache->file_size, cache->file_pos);

    // Should never happen, unless the disk is full, or someone succeeded to
    // trick us to write into a pipe or a socket.
    if (res != len) {
        FUNC1(cache, "Could not write all data.\n");
        return false;
    }

    return true;
}