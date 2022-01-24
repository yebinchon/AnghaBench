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
struct TYPE_5__ {TYPE_1__* o; } ;
struct TYPE_4__ {scalar_t__ bin_obj; } ;
typedef  int /*<<< orphan*/  RDyldCache ;
typedef  TYPE_2__ RBinFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(RBinFile *bf) {
	RDyldCache *cache = (RDyldCache*) bf->o->bin_obj;
	// unswizzle_io_read (cache, bf->rbin->iob.io); // XXX io may be dead here
	FUNC0 (cache);
}