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
struct TYPE_4__ {int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_1__ zend_resource ;
struct TYPE_5__ {int /*<<< orphan*/  magic; } ;
typedef  TYPE_2__ php_fileinfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(zend_resource *rsrc) /* {{{ */
{
	if (rsrc->ptr) {
		php_fileinfo *finfo = (php_fileinfo *) rsrc->ptr;
		FUNC1(finfo->magic);
		FUNC0(rsrc->ptr);
		rsrc->ptr = NULL;
	}
}