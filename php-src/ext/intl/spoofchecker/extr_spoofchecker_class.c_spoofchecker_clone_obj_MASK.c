#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  ce; } ;
typedef  TYPE_1__ zend_object ;
struct TYPE_14__ {TYPE_1__* (* create_object ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_13__ {int /*<<< orphan*/  zo; int /*<<< orphan*/  uspoof; } ;
typedef  TYPE_2__ Spoofchecker_object ;

/* Variables and functions */
 int /*<<< orphan*/  E_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_8__* Spoofchecker_ce_ptr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_object *FUNC12(zend_object *object) /* {{{ */
{
	zend_object *new_obj_val;
	Spoofchecker_object *sfo, *new_sfo;

    sfo = FUNC7(object);
    FUNC5(FUNC2(sfo));

	new_obj_val = Spoofchecker_ce_ptr->create_object(object->ce);
	new_sfo = FUNC7(new_obj_val);
	/* clone standard parts */
	FUNC11(&new_sfo->zo, &sfo->zo);
	/* clone internal object */
	new_sfo->uspoof = FUNC9(sfo->uspoof, FUNC1(new_sfo));
	if(FUNC4(FUNC0(new_sfo))) {
		/* set up error in case error handler is interested */
		FUNC6( NULL, FUNC0(new_sfo), "Failed to clone SpoofChecker object", 0 );
		FUNC3(&new_sfo->zo); /* free new object */
		FUNC10(E_ERROR, "Failed to clone SpoofChecker object");
	}
	return new_obj_val;
}