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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void FUNC7(zval *zv)
{
	sdlTypePtr type = FUNC1(zv);

	if (type->name) {
		FUNC5(type->name);
	}
	if (type->namens) {
		FUNC5(type->namens);
	}
	if (type->def) {
		FUNC5(type->def);
	}
	if (type->fixed) {
		FUNC5(type->fixed);
	}
	if (type->elements) {
		FUNC6(type->elements);
		FUNC5(type->elements);
	}
	if (type->attributes) {
		FUNC6(type->attributes);
		FUNC5(type->attributes);
	}
	if (type->model) {
		zval zv;
		FUNC0(&zv, type->model);
		FUNC2(&zv);
	}
	if (type->restrictions) {
		FUNC4(type->restrictions->minExclusive);
		FUNC4(type->restrictions->minInclusive);
		FUNC4(type->restrictions->maxExclusive);
		FUNC4(type->restrictions->maxInclusive);
		FUNC4(type->restrictions->totalDigits);
		FUNC4(type->restrictions->fractionDigits);
		FUNC4(type->restrictions->length);
		FUNC4(type->restrictions->minLength);
		FUNC4(type->restrictions->maxLength);
		FUNC3(type->restrictions->whiteSpace);
		FUNC3(type->restrictions->pattern);
		if (type->restrictions->enumeration) {
			FUNC6(type->restrictions->enumeration);
			FUNC5(type->restrictions->enumeration);
		}
		FUNC5(type->restrictions);
	}
	FUNC5(type);
}