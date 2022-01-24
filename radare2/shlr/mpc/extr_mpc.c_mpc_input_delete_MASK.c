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
struct TYPE_4__ {scalar_t__ type; struct TYPE_4__* lasts; struct TYPE_4__* marks; struct TYPE_4__* buffer; struct TYPE_4__* string; struct TYPE_4__* filename; } ;
typedef  TYPE_1__ mpc_input_t ;

/* Variables and functions */
 scalar_t__ MPC_INPUT_PIPE ; 
 scalar_t__ MPC_INPUT_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC1(mpc_input_t *i) {
  
  FUNC0(i->filename);
  
  if (i->type == MPC_INPUT_STRING) { FUNC0(i->string); }
  if (i->type == MPC_INPUT_PIPE) { FUNC0(i->buffer); }
  
  FUNC0(i->marks);
  FUNC0(i->lasts);
  FUNC0(i);
}