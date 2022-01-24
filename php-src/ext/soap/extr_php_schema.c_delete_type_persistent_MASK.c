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
typedef  TYPE_1__* sdlTypePtr ;
struct TYPE_5__ {struct TYPE_5__* restrictions; struct TYPE_5__* enumeration; int /*<<< orphan*/  pattern; int /*<<< orphan*/  whiteSpace; int /*<<< orphan*/  maxLength; int /*<<< orphan*/  minLength; int /*<<< orphan*/  length; int /*<<< orphan*/  fractionDigits; int /*<<< orphan*/  totalDigits; int /*<<< orphan*/  maxInclusive; int /*<<< orphan*/  maxExclusive; int /*<<< orphan*/  minInclusive; int /*<<< orphan*/  minExclusive; scalar_t__ model; struct TYPE_5__* attributes; struct TYPE_5__* elements; struct TYPE_5__* fixed; struct TYPE_5__* def; struct TYPE_5__* namens; struct TYPE_5__* name; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(zval *zv)
{
	sdlTypePtr type = FUNC0(zv);
	if (type->name) {
		FUNC4(type->name);
	}
	if (type->namens) {
		FUNC4(type->namens);
	}
	if (type->def) {
		FUNC4(type->def);
	}
	if (type->fixed) {
		FUNC4(type->fixed);
	}
	if (type->elements) {
		FUNC5(type->elements);
		FUNC4(type->elements);
	}
	if (type->attributes) {
		FUNC5(type->attributes);
		FUNC4(type->attributes);
	}
	if (type->model) {
		FUNC1(type->model);
	}
	if (type->restrictions) {
		FUNC3(type->restrictions->minExclusive);
		FUNC3(type->restrictions->minInclusive);
		FUNC3(type->restrictions->maxExclusive);
		FUNC3(type->restrictions->maxInclusive);
		FUNC3(type->restrictions->totalDigits);
		FUNC3(type->restrictions->fractionDigits);
		FUNC3(type->restrictions->length);
		FUNC3(type->restrictions->minLength);
		FUNC3(type->restrictions->maxLength);
		FUNC2(type->restrictions->whiteSpace);
		FUNC2(type->restrictions->pattern);
		if (type->restrictions->enumeration) {
			FUNC5(type->restrictions->enumeration);
			FUNC4(type->restrictions->enumeration);
		}
		FUNC4(type->restrictions);
	}
	FUNC4(type);
}