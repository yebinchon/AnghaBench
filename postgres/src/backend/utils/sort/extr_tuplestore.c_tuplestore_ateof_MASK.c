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
struct TYPE_5__ {size_t activeptr; TYPE_1__* readptrs; } ;
typedef  TYPE_2__ Tuplestorestate ;
struct TYPE_4__ {int eof_reached; } ;

/* Variables and functions */

bool
FUNC0(Tuplestorestate *state)
{
	return state->readptrs[state->activeptr].eof_reached;
}