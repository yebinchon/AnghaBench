#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  macro_t ;
typedef  int /*<<< orphan*/  keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  END ; 
 int /*<<< orphan*/  LALT ; 
 int /*<<< orphan*/  LGUI ; 
 int /*<<< orphan*/  LSFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

const macro_t *FUNC5(keyrecord_t *record, uint8_t id, uint8_t opt) {
  switch(id) {
    case 1:
      return FUNC4(record, LGUI, FUNC1( FUNC0(LSFT), FUNC2(9), FUNC3(LSFT), END));
      break;
    case 2:
      return FUNC4(record, LALT, FUNC1( FUNC0(LSFT), FUNC2(0), FUNC3(LSFT), END));
      break;

  }
  return MACRO_NONE;
}