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
typedef  scalar_t__ u16 ;
struct btrfs_super_block {scalar_t__ sys_chunk_array_size; scalar_t__ sys_chunk_array; } ;
struct btrfs_disk_key {int /*<<< orphan*/  type; int /*<<< orphan*/  offset; int /*<<< orphan*/  objectid; } ;
struct btrfs_chunk {scalar_t__ length; scalar_t__ owner; scalar_t__ stripe_len; scalar_t__ type; scalar_t__ io_align; scalar_t__ io_width; scalar_t__ sector_size; scalar_t__ num_stripes; scalar_t__ sub_stripes; } ;
struct TYPE_2__ {struct btrfs_super_block SuperBlock; } ;

/* Variables and functions */
 TYPE_1__* BtrFsInfo ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_disk_key const*,struct btrfs_chunk*) ; 

__attribute__((used)) static void FUNC3()
{
    struct btrfs_super_block *sb = &BtrFsInfo->SuperBlock;
    struct btrfs_disk_key *key;
    struct btrfs_chunk *chunk;
    u16 cur;

    /* read chunk array in superblock */
    FUNC0("reading chunk array\n-----------------------------\n");
    cur = 0;
    while (cur < sb->sys_chunk_array_size)
    {
        key = (struct btrfs_disk_key *) (sb->sys_chunk_array + cur);
        FUNC0("chunk key objectid: %llx, offset: %llx, type: %u\n", key->objectid, key->offset, key->type);
        cur += sizeof(*key);
        chunk = (struct btrfs_chunk *) (sb->sys_chunk_array + cur);
        FUNC0("chunk length: %llx\n", chunk->length);
        FUNC0("chunk owner: %llu\n", chunk->owner);
        FUNC0("chunk stripe_len: %llx\n", chunk->stripe_len);
        FUNC0("chunk type: %llu\n", chunk->type);
        FUNC0("chunk io_align: %u\n", chunk->io_align);
        FUNC0("chunk io_width: %u\n", chunk->io_width);
        FUNC0("chunk sector_size: %u\n", chunk->sector_size);
        FUNC0("chunk num_stripes: %u\n", chunk->num_stripes);
        FUNC0("chunk sub_stripes: %u\n", chunk->sub_stripes);

        cur += FUNC1(chunk->num_stripes);
        FUNC0("read_sys_chunk_array() cur=%d\n", cur);
        FUNC2((const struct btrfs_disk_key *) key, chunk);
    }
}