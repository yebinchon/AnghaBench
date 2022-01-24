#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ptr_attr; } ;
struct TYPE_5__ {int /*<<< orphan*/  pad; TYPE_1__ ptr_attr; int /*<<< orphan*/  utype; } ;
typedef  TYPE_2__ SLF_POINTER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ut32 ; 
 int /*<<< orphan*/  ut8 ; 

__attribute__((used)) static int FUNC4(SLF_POINTER *lf_pointer, unsigned char *leaf_data, unsigned int *read_bytes, unsigned int len)
{
	unsigned int tmp_before_read_bytes = *read_bytes;

	FUNC2(*read_bytes, len, lf_pointer->utype, leaf_data, ut32);
	FUNC2(*read_bytes, len, lf_pointer->ptr_attr.ptr_attr, leaf_data, ut32);

	lf_pointer->ptr_attr.ptr_attr = FUNC3(lf_pointer->ptr_attr.ptr_attr);

	FUNC1(*read_bytes, len, lf_pointer->pad, leaf_data, ut8);
	FUNC0(lf_pointer->pad, *read_bytes, leaf_data, len);

	return *read_bytes - tmp_before_read_bytes;
}