#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
struct TYPE_5__ {scalar_t__ checksum; scalar_t__ length; } ;
typedef  TYPE_1__ dynamic_macro_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 TYPE_1__* dynamic_macros ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC4(uint8_t macro_id) {
  dynamic_macro_t* dst = &dynamic_macros[macro_id];

  FUNC3(dst, FUNC2(macro_id), sizeof(dynamic_macro_t));

  /* Validate checksum, ifchecksum is NOT valid for macro, set its length to 0 to prevent its use. */
  if (FUNC1(dst) != dst->checksum) {
    FUNC0("dynamic macro: slot %d not loaded, checksum mismatch\n", macro_id);
    dst->length = 0;

    return;
  }

  FUNC0("dynamic macro: slot %d loaded from eeprom, checksum okay\n", macro_id);
}