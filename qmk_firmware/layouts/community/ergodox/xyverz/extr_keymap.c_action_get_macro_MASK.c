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
 int /*<<< orphan*/  const* MACRO_NONE ; 
#define  _CM 130 
#define  _DV 129 
#define  _QW 128 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 

const macro_t *FUNC1(keyrecord_t *record, uint8_t id, uint8_t opt)
{
      switch(id) {
        case _DV:
          if (record->event.pressed) {
            FUNC0(1UL<<_DV);
          }
          break;
        case _QW:
          if (record->event.pressed) {
            FUNC0(1UL<<_QW);
          }
          break;
        case _CM:
          if (record->event.pressed) {
            FUNC0(1UL<<_CM);
          }
          break;
      }
    return MACRO_NONE;
}