#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  scope; } ;
struct TYPE_9__ {TYPE_1__ common; } ;
typedef  TYPE_2__ zend_function ;
struct TYPE_10__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ zend_arg_info ;
typedef  int /*<<< orphan*/  inheritance_status ;

/* Variables and functions */
 int /*<<< orphan*/  INHERITANCE_ERROR ; 
 int /*<<< orphan*/  INHERITANCE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inheritance_status FUNC2(
		const zend_function *fe, zend_arg_info *fe_arg_info,
		const zend_function *proto, zend_arg_info *proto_arg_info) /* {{{ */
{
	if (!FUNC0(fe_arg_info->type)) {
		/* Child with no type is always compatible */
		return INHERITANCE_SUCCESS;
	}

	if (!FUNC0(proto_arg_info->type)) {
		/* Child defines a type, but parent doesn't, violates LSP */
		return INHERITANCE_ERROR;
	}

	/* Contravariant type check is performed as a covariant type check with swapped
	 * argument order. */
	return FUNC1(
		proto->common.scope, proto_arg_info->type, fe->common.scope, fe_arg_info->type);
}