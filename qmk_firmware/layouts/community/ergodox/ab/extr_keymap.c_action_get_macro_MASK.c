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
 int A ; 
 int C ; 
 int E ; 
 int /*<<< orphan*/  END ; 
 int ENT ; 
 int L ; 
 int M ; 
 int /*<<< orphan*/  const* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
 int MINS ; 
 int S ; 
 int SPC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  _CUS1 130 
#define  _CUS2 129 
#define  _MOB 128 

const macro_t *FUNC2(keyrecord_t *record, uint8_t id, uint8_t opt)
{
    // MACRODOWN only works in this function
    switch(id) {
    case _MOB: // Your mobile# here.
	return FUNC0(FUNC1(1), FUNC1(2), FUNC1(3), FUNC1(MINS),
			 FUNC1(1), FUNC1(2), FUNC1(3), FUNC1(MINS),
			 FUNC1(1), FUNC1(2), FUNC1(3), FUNC1(4),
			 END);
    case _CUS1: // Your custom macro 1
	return FUNC0(FUNC1(E), FUNC1(M), FUNC1(A), FUNC1(C), FUNC1(S), FUNC1(SPC), END);
    case _CUS2: // Your custom macro 2
	return FUNC0(FUNC1(L), FUNC1(S), FUNC1(SPC), FUNC1(MINS), FUNC1(L), FUNC1(ENT), END);
    };
    return MACRO_NONE;
}