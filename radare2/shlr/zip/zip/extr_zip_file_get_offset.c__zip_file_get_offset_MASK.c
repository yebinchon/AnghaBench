#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t zip_uint64_t ;
typedef  size_t zip_uint32_t ;
typedef  scalar_t__ zip_int32_t ;
struct zip_error {int dummy; } ;
struct zip {int /*<<< orphan*/  zp; TYPE_2__* entry; } ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_4__ {TYPE_1__* orig; } ;
struct TYPE_3__ {size_t offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFBIG ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  ZIP_EF_LOCAL ; 
 int /*<<< orphan*/  ZIP_ER_SEEK ; 
 size_t ZIP_OFF_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct zip_error*) ; 
 int /*<<< orphan*/  FUNC1 (struct zip_error*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

zip_uint64_t
FUNC3(const struct zip *za, zip_uint64_t idx, struct zip_error *error)
{
    zip_uint64_t offset;
    zip_int32_t size;

    offset = za->entry[idx].orig->offset;

    if (FUNC2(za->zp, (off_t)offset, SEEK_SET) != 0) {
	FUNC1(error, ZIP_ER_SEEK, errno);
	return 0;
    }

    /* XXX: cache? */
    if ((size=FUNC0(za->zp, ZIP_EF_LOCAL, error)) < 0)
	return 0;

    if (offset+(zip_uint32_t)size > ZIP_OFF_MAX) {
        FUNC1(error, ZIP_ER_SEEK, EFBIG);
        return 0;
    }
    
    return offset + (zip_uint32_t)size;
}