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
struct TYPE_7__ {scalar_t__ name; } ;
struct TYPE_5__ {int /*<<< orphan*/  cv_property; } ;
struct TYPE_6__ {int /*<<< orphan*/  pad; TYPE_3__ name; TYPE_1__ prop; int /*<<< orphan*/  field_list; int /*<<< orphan*/  utype; int /*<<< orphan*/  count; } ;
typedef  TYPE_2__ SLF_ENUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,unsigned char*,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  ut16 ; 
 int /*<<< orphan*/  ut32 ; 
 int /*<<< orphan*/  ut8 ; 

__attribute__((used)) static int FUNC6(SLF_ENUM *lf_enum, unsigned char *leaf_data, unsigned int *read_bytes, unsigned int len)
{
	unsigned int tmp_before_read_bytes = *read_bytes;
	unsigned int before_read_bytes = 0;

	lf_enum->name.name = 0;

	FUNC2(*read_bytes, len, lf_enum->count, leaf_data, ut16);
	FUNC2(*read_bytes, len, lf_enum->prop.cv_property, leaf_data, ut16);
	FUNC3(*read_bytes, len, lf_enum->utype, leaf_data, ut32);
	FUNC3(*read_bytes, len, lf_enum->field_list, leaf_data, ut32);

	lf_enum->prop.cv_property = FUNC4(lf_enum->prop.cv_property);
	before_read_bytes = *read_bytes;
	FUNC5 (&lf_enum->name, leaf_data, read_bytes, len);
	leaf_data += (*read_bytes - before_read_bytes);

	FUNC1(*read_bytes, len, lf_enum->pad, leaf_data, ut8);
	FUNC0(lf_enum->pad, *read_bytes, leaf_data, len);

//	printf("parse_lf_enum(): name = %s\n", lf_enum->name.name);
	return *read_bytes - tmp_before_read_bytes;
}