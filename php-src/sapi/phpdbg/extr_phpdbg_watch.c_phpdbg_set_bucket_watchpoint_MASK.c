#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ phpdbg_watchpoint_t ;
typedef  int /*<<< orphan*/  Bucket ;

/* Variables and functions */
 int /*<<< orphan*/  WATCH_ON_BUCKET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 

void FUNC1(Bucket *bucket, phpdbg_watchpoint_t *watch) {
	FUNC0(bucket, sizeof(Bucket), watch);
	watch->type = WATCH_ON_BUCKET;
}