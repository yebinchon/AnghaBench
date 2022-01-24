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
struct TYPE_4__ {scalar_t__ interrupted; int /*<<< orphan*/  count; } ;
struct TYPE_5__ {TYPE_1__ tap; int /*<<< orphan*/  event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char) ; 

void FUNC2(keyrecord_t record) {
    FUNC0(record.event);
#ifndef NO_ACTION_TAPPING
    FUNC1(":%u%c", record.tap.count, (record.tap.interrupted ? '-' : ' '));
#endif
}