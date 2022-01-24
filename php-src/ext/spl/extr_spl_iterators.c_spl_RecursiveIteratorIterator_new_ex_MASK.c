#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * handlers; } ;
typedef  TYPE_1__ zend_object ;
typedef  int /*<<< orphan*/  zend_class_entry ;
struct TYPE_8__ {TYPE_1__ std; int /*<<< orphan*/ * postfix; int /*<<< orphan*/ * prefix; } ;
typedef  TYPE_2__ spl_recursive_it_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  spl_handlers_rec_it_it ; 
 TYPE_2__* FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_object *FUNC4(zend_class_entry *class_type, int init_prefix)
{
	spl_recursive_it_object *intern;

	intern = FUNC2(sizeof(spl_recursive_it_object), class_type);

	if (init_prefix) {
		FUNC1(&intern->prefix[0], "",    0);
		FUNC1(&intern->prefix[1], "| ",  2);
		FUNC1(&intern->prefix[2], "  ",  2);
		FUNC1(&intern->prefix[3], "|-",  2);
		FUNC1(&intern->prefix[4], "\\-", 2);
		FUNC1(&intern->prefix[5], "",    0);

		FUNC1(&intern->postfix[0], "",    0);
	}

	FUNC3(&intern->std, class_type);
	FUNC0(&intern->std, class_type);

	intern->std.handlers = &spl_handlers_rec_it_it;
	return &intern->std;
}