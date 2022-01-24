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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct btrfs_path {int dummy; } ;
struct btrfs_file_extent_item {scalar_t__ num_bytes; scalar_t__ disk_bytenr; scalar_t__ disk_num_bytes; scalar_t__ compression; scalar_t__ offset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 scalar_t__ BTRFS_COMPRESS_NONE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_ADDRESS ; 
 scalar_t__ READ_ERROR ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int SECTOR_SIZE ; 
 int /*<<< orphan*/  TAG_BTRFS_FILE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

__attribute__((used)) static u64 FUNC8(struct btrfs_path *path, struct btrfs_file_extent_item *extent,
                                 u64 offset, u64 size, char *out)
{
    u64 physical, dlen;
    char *temp_out;
    dlen = extent->num_bytes;

    if (offset > dlen)
    {
        FUNC1("Tried to read offset (%llu) beyond extent length (%lu)\n", offset, dlen);
        return READ_ERROR;
    }

    if (size > dlen - offset)
        size = dlen - offset;

    /* Handle sparse extent */
    if (extent->disk_bytenr == 0 && extent->disk_num_bytes == 0)
    {
        FUNC4(out, size);
        return size;
    }

    physical = FUNC6(extent->disk_bytenr);
    if (physical == INVALID_ADDRESS)
    {
        FUNC1("Unable to convert logical address to physical: %llu\n", extent->disk_bytenr);
        return READ_ERROR;
    }

    if (extent->compression == BTRFS_COMPRESS_NONE)
    {
        physical += extent->offset + offset;

        /* If somebody tried to do unaligned access */
        if (physical & (SECTOR_SIZE - 1))
        {
            u32 shift;

            temp_out = FUNC2(SECTOR_SIZE, TAG_BTRFS_FILE);

            if (!FUNC5(FUNC0(physical, SECTOR_SIZE), temp_out, SECTOR_SIZE))
            {
                FUNC3(temp_out, TAG_BTRFS_FILE);
                return READ_ERROR;
            }

            shift = (u32)(physical & (SECTOR_SIZE - 1));

            if (size <= SECTOR_SIZE - shift)
            {
                FUNC7(out, temp_out + shift, size);
                FUNC3(temp_out, TAG_BTRFS_FILE);
                return size;
            }

            FUNC7(out, temp_out + shift, SECTOR_SIZE - shift);
            FUNC3(temp_out, TAG_BTRFS_FILE);

            if (!FUNC5(physical + SECTOR_SIZE - shift, out + SECTOR_SIZE - shift, size - SECTOR_SIZE + shift))
                return READ_ERROR;
        } else
        {
            if (!FUNC5(physical, out, size))
                return READ_ERROR;
        }

        return size;
    }

    FUNC1("No compression supported right now\n");
    return READ_ERROR;
}