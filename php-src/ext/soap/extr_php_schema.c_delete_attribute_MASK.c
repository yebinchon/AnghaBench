#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  TYPE_1__* sdlAttributePtr ;
struct TYPE_5__ {struct TYPE_5__* extraAttributes; struct TYPE_5__* ref; struct TYPE_5__* namens; struct TYPE_5__* name; struct TYPE_5__* fixed; struct TYPE_5__* def; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(zval *zv)
{
	sdlAttributePtr attr = FUNC0(zv);

	if (attr->def) {
		FUNC1(attr->def);
	}
	if (attr->fixed) {
		FUNC1(attr->fixed);
	}
	if (attr->name) {
		FUNC1(attr->name);
	}
	if (attr->namens) {
		FUNC1(attr->namens);
	}
	if (attr->ref) {
		FUNC1(attr->ref);
	}
	if (attr->extraAttributes) {
		FUNC2(attr->extraAttributes);
		FUNC1(attr->extraAttributes);
	}
	FUNC1(attr);
}