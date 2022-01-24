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
struct TYPE_6__ {struct TYPE_6__* file; TYPE_1__* device; } ;
struct TYPE_5__ {TYPE_2__* disk; } ;
typedef  TYPE_2__ GrubFS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

void FUNC1 (GrubFS *gf) {
	if (gf) {
		if (gf->file && gf->file->device) {
			FUNC0 (gf->file->device->disk);
		}
		//free (gf->file->device);
		FUNC0 (gf->file);
		FUNC0 (gf);
	}
}