#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * handlers; } ;
struct TYPE_6__ {TYPE_2__ std; } ;
typedef  TYPE_1__ zend_weakref ;
typedef  TYPE_2__ zend_object ;
typedef  int /*<<< orphan*/  zend_class_entry ;

/* Variables and functions */
 int /*<<< orphan*/  zend_ce_weakref ; 
 TYPE_1__* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zend_weakref_handlers ; 

__attribute__((used)) static zend_object* FUNC2(zend_class_entry *ce) {
	zend_weakref *wr = FUNC0(sizeof(zend_weakref), zend_ce_weakref);

	FUNC1(&wr->std, zend_ce_weakref);

	wr->std.handlers = &zend_weakref_handlers;

	return &wr->std;
}