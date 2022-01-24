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
typedef  int /*<<< orphan*/  zval ;
struct TYPE_5__ {int /*<<< orphan*/  stmt_obj_zval; TYPE_1__* stmt_obj; } ;
typedef  TYPE_2__ php_sqlite3_free_list ;
struct TYPE_4__ {scalar_t__ initialised; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(php_sqlite3_free_list **free_list, zval *statement ) /* {{{ */
{
	return  ((*free_list)->stmt_obj->initialised && FUNC1(statement) == FUNC0((*free_list)->stmt_obj_zval));
}