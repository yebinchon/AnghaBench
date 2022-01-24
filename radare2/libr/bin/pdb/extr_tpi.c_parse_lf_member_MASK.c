#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ name_or_val; } ;
struct TYPE_5__ {int /*<<< orphan*/  fldattr; } ;
struct TYPE_6__ {int /*<<< orphan*/  pad; TYPE_3__ offset; int /*<<< orphan*/  index; TYPE_1__ fldattr; } ;
typedef  TYPE_2__ SLF_MEMBER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,unsigned char*,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  ut16 ; 
 int /*<<< orphan*/  ut32 ; 
 int /*<<< orphan*/  ut8 ; 

__attribute__((used)) static int FUNC5(SLF_MEMBER *lf_member, unsigned char *leaf_data, unsigned int *read_bytes, unsigned int len)
{
	int read_bytes_before = *read_bytes, tmp_read_bytes_before = 0;

	lf_member->offset.name_or_val = 0;

	FUNC2(*read_bytes, len, lf_member->fldattr.fldattr, leaf_data, ut16);
	FUNC3(*read_bytes, len, lf_member->index, leaf_data, ut32);

	tmp_read_bytes_before = *read_bytes;
	FUNC4(&lf_member->offset, leaf_data, read_bytes, len);
	leaf_data += (*read_bytes - tmp_read_bytes_before);

	FUNC1(*read_bytes, len, lf_member->pad, leaf_data, ut8);
	FUNC0(lf_member->pad, *read_bytes, leaf_data, len);

//	printf("parse_lf_member(): name = ");
//	printf_sval_name(&lf_member->offset);
//	printf("\n");

	return (*read_bytes - read_bytes_before);
}