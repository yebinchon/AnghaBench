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
struct TYPE_4__ {int /*<<< orphan*/ * za; } ;
typedef  TYPE_1__ zip_rsrc ;
struct TYPE_5__ {int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_2__ zend_resource ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(zend_resource *rsrc)
{
	zip_rsrc * zip_int = (zip_rsrc *) rsrc->ptr;

	if (zip_int) {
		if (zip_int->za) {
			if (FUNC2(zip_int->za) != 0) {
				FUNC1(NULL, E_WARNING, "Cannot destroy the zip context");
			}
			zip_int->za = NULL;
		}

		FUNC0(rsrc->ptr);

		rsrc->ptr = NULL;
	}
}