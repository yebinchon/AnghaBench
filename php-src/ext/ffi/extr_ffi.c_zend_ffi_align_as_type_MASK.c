#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  type; int /*<<< orphan*/  align; } ;
typedef  TYPE_1__ zend_ffi_dcl ;
struct TYPE_7__ {int /*<<< orphan*/  align; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(zend_ffi_dcl *dcl, zend_ffi_dcl *align_dcl) /* {{{ */
{
	FUNC2(align_dcl);
	dcl->align = FUNC0(align_dcl->align, FUNC1(align_dcl->type)->align);
}