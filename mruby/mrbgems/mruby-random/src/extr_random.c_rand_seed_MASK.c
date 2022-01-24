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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/ * seed; } ;
typedef  TYPE_1__ rand_state ;

/* Variables and functions */
 size_t LASTSEED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static uint32_t
FUNC1(rand_state *t, uint32_t seed)
{
  uint32_t old_seed = t->seed[LASTSEED];
  FUNC0(t);
  t->seed[LASTSEED] = seed;
  return old_seed;
}