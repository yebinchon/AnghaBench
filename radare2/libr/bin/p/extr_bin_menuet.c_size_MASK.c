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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_6__ {int /*<<< orphan*/  buf; TYPE_1__* o; } ;
struct TYPE_5__ {scalar_t__ info; } ;
typedef  TYPE_2__ RBinFile ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ut64 FUNC3(RBinFile *bf) {
	ut8 buf[4] = {0};
	if (!bf->o->info) {
		bf->o->info = FUNC0 (bf);
	}
	if (!bf->o->info) {
		return 0;
	}
	FUNC1 (bf->buf, 16, buf, 4);
	return (ut64)FUNC2 (buf, false);
}