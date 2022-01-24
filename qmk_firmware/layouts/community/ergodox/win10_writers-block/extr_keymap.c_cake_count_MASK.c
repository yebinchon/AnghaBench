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
struct TYPE_4__ {int count; } ;
typedef  TYPE_1__ qk_tap_dance_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  MDIA ; 
 int /*<<< orphan*/  RIMW ; 
 int /*<<< orphan*/  SYMB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3 (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count == 2) {         
    FUNC1 (SYMB);        //define double tap here
    FUNC0 (MDIA);
  } 
  else {    
    FUNC0 (SYMB);       //define single tap or hold here
    FUNC0 (MDIA);
  }
  if (state->count == 3) {         
     FUNC1 (RIMW);       //define triple tap here
     FUNC0 (MDIA);
  } 
  else {    
   	FUNC0 (RIMW);       //define single tap or hold here
	FUNC0 (MDIA);
    FUNC2 (state);
  }
}