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
struct TYPE_3__ {char* vt_descriptors; int count; int /*<<< orphan*/  pad; } ;
typedef  TYPE_1__ SLF_VTSHAPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,int,unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  ut16 ; 
 int /*<<< orphan*/  ut8 ; 

__attribute__((used)) static int FUNC5(SLF_VTSHAPE *lf_vtshape, unsigned char *leaf_data, unsigned int *read_bytes, unsigned int len) {
	unsigned int tmp_before_read_bytes = *read_bytes;
	unsigned int size; // in bytes;

	lf_vtshape->vt_descriptors = 0;

	FUNC2(*read_bytes, len, lf_vtshape->count, leaf_data, ut16);

	size = (4 * lf_vtshape->count + (lf_vtshape->count % 2) * 4) / 8;
	lf_vtshape->vt_descriptors = (char *) FUNC3 (size);
	if (!lf_vtshape->vt_descriptors) {
		return 0;
	}
	FUNC4 (lf_vtshape->vt_descriptors, leaf_data, size);
	leaf_data += size;
	*read_bytes += size;

	FUNC1(*read_bytes, len, lf_vtshape->pad, leaf_data, ut8);
	FUNC0 (lf_vtshape->pad, *read_bytes, leaf_data, len);

	return *read_bytes - tmp_before_read_bytes;
}