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
struct TYPE_4__ {int /*<<< orphan*/  modifier; } ;
struct TYPE_5__ {int /*<<< orphan*/  pad; TYPE_1__ umodifier; int /*<<< orphan*/  modified_type; } ;
typedef  TYPE_2__ SLF_MODIFIER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ut16 ; 
 int /*<<< orphan*/  ut32 ; 
 int /*<<< orphan*/  ut8 ; 

__attribute__((used)) static int FUNC5(SLF_MODIFIER *lf_modifier, unsigned char *leaf_data, unsigned int *read_bytes, unsigned int len)
{
	unsigned int tmp_before_read_bytes = *read_bytes;

	FUNC3(*read_bytes, len, lf_modifier->modified_type, leaf_data, ut32);
	FUNC2(*read_bytes, len, lf_modifier->umodifier.modifier, leaf_data, ut16);
	lf_modifier->umodifier.modifier = FUNC4(lf_modifier->umodifier.modifier);

	FUNC1(*read_bytes, len, lf_modifier->pad, leaf_data, ut8);
	FUNC0(lf_modifier->pad, *read_bytes, leaf_data, len);

	return *read_bytes - tmp_before_read_bytes;
}