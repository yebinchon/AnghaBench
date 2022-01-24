#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_6__ {int count; int /*<<< orphan*/  interrupted; } ;
struct TYPE_5__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_7__ {TYPE_2__ tap; TYPE_1__ event; } ;
typedef  TYPE_3__ keyrecord_t ;

/* Variables and functions */
#define  TRIPLE_TAP_1_3 129 
#define  TRIPLE_TAP_2_3 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(keyrecord_t *record, uint8_t id, uint8_t opt)
{
	switch (id)
	{
	case TRIPLE_TAP_1_3:
	case TRIPLE_TAP_2_3:
		if (record->event.pressed) {
			FUNC2( id == TRIPLE_TAP_1_3 ? 1 : 2 );
			if (record->tap.count && !record->tap.interrupted) {
				if (record->tap.count >= 3) {
					FUNC0(3);
				}
			} else {
				record->tap.count = 0;
			}
		} else {
			FUNC1( id == TRIPLE_TAP_1_3 ? 1 : 2 );
		}
		break;
	}
}