#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * zf; } ;
typedef  TYPE_1__ zip_read_rsrc ;
struct TYPE_6__ {int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_2__ zend_resource ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(zend_resource *rsrc)
{
	zip_read_rsrc *zr_rsrc = (zip_read_rsrc *) rsrc->ptr;

	if (zr_rsrc) {
		if (zr_rsrc->zf) {
			FUNC1(zr_rsrc->zf);
			zr_rsrc->zf = NULL;
		}
		FUNC0(zr_rsrc);
		rsrc->ptr = NULL;
	}
}