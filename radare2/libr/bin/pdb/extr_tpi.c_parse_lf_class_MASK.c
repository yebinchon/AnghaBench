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
struct TYPE_5__ {int /*<<< orphan*/  cv_property; } ;
struct TYPE_6__ {int /*<<< orphan*/  pad; TYPE_3__ size; int /*<<< orphan*/  vshape; int /*<<< orphan*/  derived; int /*<<< orphan*/  field_list; TYPE_1__ prop; int /*<<< orphan*/  count; } ;
typedef  TYPE_2__ SLF_CLASS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,unsigned char*,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  ut16 ; 
 int /*<<< orphan*/  ut32 ; 
 int /*<<< orphan*/  ut8 ; 

__attribute__((used)) static int FUNC5(SLF_CLASS *lf_class, unsigned char *leaf_data, unsigned int *read_bytes, unsigned int len)
{
//	SLF_CLASS lf_class;
	unsigned int tmp_before_read_bytes = *read_bytes;
	unsigned int before_read_bytes = 0;

	lf_class->size.name_or_val = 0;

	FUNC2(*read_bytes, len, lf_class->count, leaf_data, ut16);
	FUNC2(*read_bytes, len, lf_class->prop.cv_property, leaf_data, ut16);
	FUNC3(*read_bytes, len, lf_class->field_list, leaf_data, ut32);
	FUNC3(*read_bytes, len, lf_class->derived, leaf_data, ut32);
	FUNC3(*read_bytes, len, lf_class->vshape, leaf_data, ut32);

	before_read_bytes = *read_bytes;
	FUNC4(&lf_class->size, leaf_data, read_bytes, len);
	before_read_bytes = *read_bytes - before_read_bytes;
	leaf_data = (unsigned char *)leaf_data + before_read_bytes;

	FUNC1(*read_bytes, len, lf_class->pad, leaf_data, ut8);
	FUNC0(lf_class->pad, *read_bytes, leaf_data, len);

//	printf("%s:", "parse_lf_class()");
//	printf_sval_name(&lf_class->size);
//	printf("\n");
	return *read_bytes - tmp_before_read_bytes;
}