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
#define  CFLEX 129 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  END ; 
 int const EQL ; 
#define  GRV 128 
 int /*<<< orphan*/  LSFT ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
 int /*<<< orphan*/  RALT ; 
 int const SPC ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

const macro_t *FUNC4(keyrecord_t *record, uint8_t id, uint8_t opt)
{
  // MACRODOWN only works in this function
      switch(id) {
        case GRV: // macro to print accent grave
            return (record->event.pressed ?
                    FUNC1( FUNC0(LSFT), FUNC2(EQL), FUNC3(RALT), FUNC2(SPC), END) :
                    MACRO_NONE );
        case CFLEX: // print accent circonflex
            return (record->event.pressed ?
                    FUNC1( FUNC2(GRV), FUNC2(SPC), END ) :
                    MACRO_NONE );
      }
    return MACRO_NONE;
}