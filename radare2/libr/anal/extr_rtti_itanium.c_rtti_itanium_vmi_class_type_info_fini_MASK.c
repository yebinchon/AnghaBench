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
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  vmi_bases; } ;
typedef  TYPE_1__ vmi_class_type_info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1 (vmi_class_type_info *vmi_cti) {
	if (vmi_cti) {
		FUNC0 (vmi_cti->vmi_bases);
		FUNC0 (vmi_cti->name);
	}
}