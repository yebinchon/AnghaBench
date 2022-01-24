#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* d_size; void* d_stream_first_sector; void* d_modified; void* d_created; void* d_flags; void** d_storage_uuid; void* d_storage; void* d_right_child; void* d_left_child; int /*<<< orphan*/  d_namelen; } ;
typedef  TYPE_1__ cdf_directory_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*) ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  uint32_t ; 
 int /*<<< orphan*/  uint64_t ; 

void
FUNC4(cdf_directory_t *d)
{
	d->d_namelen = FUNC1(d->d_namelen);
	d->d_left_child = FUNC2(FUNC0(uint32_t, d->d_left_child));
	d->d_right_child = FUNC2(FUNC0(uint32_t, d->d_right_child));
	d->d_storage = FUNC2(FUNC0(uint32_t, d->d_storage));
	d->d_storage_uuid[0] = FUNC3(d->d_storage_uuid[0]);
	d->d_storage_uuid[1] = FUNC3(d->d_storage_uuid[1]);
	d->d_flags = FUNC2(d->d_flags);
	d->d_created = FUNC3(FUNC0(uint64_t, d->d_created));
	d->d_modified = FUNC3(FUNC0(uint64_t, d->d_modified));
	d->d_stream_first_sector = FUNC2(
	    FUNC0(uint32_t, d->d_stream_first_sector));
	d->d_size = FUNC2(d->d_size);
}