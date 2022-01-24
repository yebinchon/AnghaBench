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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  macro_t ;
struct TYPE_4__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  END ; 
 int ENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
#define  PSWD1 130 
#define  PSWD2 129 
#define  PSWD3 128 
 int /*<<< orphan*/  FUNC2 (int) ; 

const macro_t *FUNC3(keyrecord_t *record, uint8_t id, uint8_t opt)
{
    switch (id)
    {
    case PSWD1:
        return (record->event.pressed ? FUNC1(FUNC0(0), FUNC2(1), FUNC2(2), FUNC2(3), FUNC2(4), FUNC2(5), FUNC2(6), FUNC2(7), FUNC2(8), FUNC2(ENT), END) : MACRO_NONE);
    case PSWD2:
        return (record->event.pressed ? FUNC1(FUNC0(0), FUNC2(1), FUNC2(2), FUNC2(3), FUNC2(4), FUNC2(5), FUNC2(6), FUNC2(7), FUNC2(8), FUNC2(ENT), END) : MACRO_NONE);
    case PSWD3:
        return (record->event.pressed ? FUNC1(FUNC0(0), FUNC2(1), FUNC2(2), FUNC2(3), FUNC2(4), FUNC2(5), FUNC2(6), FUNC2(7), FUNC2(8), FUNC2(ENT), END) : MACRO_NONE);
        //case VOLUP:
        //    return (record->event.pressed ?
        //            MACRO( D(VOLU), U(VOLU), END ) :
        //            MACRO_NONE );
        //case ALT_TAB:
        //    return (record->event.pressed ?
        //            MACRO( D(LALT), D(TAB), END ) :
        //            MACRO( U(TAB), END ));
    }
    return MACRO_NONE;
}