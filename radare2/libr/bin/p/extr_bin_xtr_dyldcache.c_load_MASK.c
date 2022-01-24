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
struct TYPE_5__ {TYPE_1__* cur; scalar_t__ file; } ;
struct TYPE_4__ {scalar_t__ xtr_obj; scalar_t__ file; } ;
typedef  TYPE_2__ RBin ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 

__attribute__((used)) static bool FUNC1(RBin *bin) {
	if (!bin || !bin->cur) {
	    return false;
	}
	if (!bin->cur->xtr_obj) {
		bin->cur->xtr_obj = FUNC0 (bin->cur->file);
	}
	if (!bin->file) {
	   	bin->file = bin->cur->file;
	}
	return bin->cur->xtr_obj? true : false;
}