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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_object_iterator ;
struct TYPE_3__ {int /*<<< orphan*/  i; int /*<<< orphan*/  currentkey; scalar_t__ is_table; int /*<<< orphan*/  current; } ;
typedef  TYPE_1__ ResourceBundle_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4( zend_object_iterator *iter, zval *key )
{
	ResourceBundle_iterator *iterator = (ResourceBundle_iterator *) iter;

	if (FUNC2(iterator->current)) {
		FUNC3( iterator);
	}

	if (iterator->is_table) {
		FUNC1(key, iterator->currentkey);
	} else {
		FUNC0(key, iterator->i);
	}
}