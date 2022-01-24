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
 int /*<<< orphan*/  FNLR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
#define  MDBL0 129 
#define  MFNLR 128 
 int /*<<< orphan*/  NUMR ; 
 int /*<<< orphan*/  P0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

const macro_t *FUNC4(keyrecord_t *record, uint8_t id, uint8_t opt)
{
  // MACRODOWN only works in this function
    switch(id) {
        case MDBL0:
            if (record->event.pressed) {
              return FUNC1( FUNC0(25), FUNC2(P0), FUNC2(P0), END );
            }
        break;
        case MFNLR:
            FUNC3(NUMR);
            FUNC3(FNLR);
            break;
    }
    return MACRO_NONE;
}