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
struct TYPE_5__ {scalar_t__ name; } ;
struct TYPE_4__ {int /*<<< orphan*/  pad; TYPE_2__ name; int /*<<< orphan*/  mlist; int /*<<< orphan*/  count; } ;
typedef  TYPE_1__ SLF_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,unsigned char*,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  ut16 ; 
 int /*<<< orphan*/  ut32 ; 
 int /*<<< orphan*/  ut8 ; 

__attribute__((used)) static int FUNC5(SLF_METHOD *lf_method, unsigned char *leaf_data, unsigned int *read_bytes, unsigned int len)
{
	unsigned int read_bytes_before = *read_bytes, tmp_read_bytes_before = 0;

	lf_method->name.name = 0;

	FUNC2(*read_bytes, len, lf_method->count, leaf_data, ut16);
	FUNC3(*read_bytes, len, lf_method->mlist, leaf_data, ut32);

	tmp_read_bytes_before = *read_bytes;
	FUNC4(&lf_method->name, leaf_data, read_bytes, len);
	leaf_data += (*read_bytes - tmp_read_bytes_before);

	FUNC1(*read_bytes, len, lf_method->pad, leaf_data, ut8);
	FUNC0(lf_method->pad, *read_bytes, leaf_data, len);

//	printf("parse_lf_method(): name = %s\n", lf_method->name.name);

	return *read_bytes - read_bytes_before;
}