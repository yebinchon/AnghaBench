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
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_3__ {int capacity; int length; int /*<<< orphan*/ * attr_values; } ;
typedef  TYPE_1__ RBinDwarfDIE ;
typedef  int /*<<< orphan*/  RBinDwarfAttrValue ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(RBinDwarfDIE* die) {
	RBinDwarfAttrValue *tmp = NULL;
	if (!die || die->capacity == 0) {
		return -EINVAL;
	}
	if (die->capacity != die->length) {
		return -EINVAL;
	}
	tmp = (RBinDwarfAttrValue*)FUNC1 (die->attr_values,
			die->capacity * 2 * sizeof (RBinDwarfAttrValue));
	if (!tmp) {
		return -ENOMEM;
	}
	FUNC0 ((ut8*)tmp + die->capacity * sizeof (RBinDwarfAttrValue),
			0, die->capacity * sizeof (RBinDwarfAttrValue));
	die->attr_values = tmp;
	die->capacity *= 2;
	return 0;
}