#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* table; int* trans; } ;
typedef  TYPE_1__ UZLIB_TREE ;
typedef  int /*<<< orphan*/  UZLIB_DATA ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int UZLIB_DATA_ERROR ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2 (UZLIB_DATA *d, UZLIB_TREE *t) {
  int sum = 0, cur = 0, len = 0;

  /* get more bits while code value is above sum */
  do {
    cur = 2*cur + FUNC1(d);

    if (++len == FUNC0(t->table))
      return UZLIB_DATA_ERROR;

    sum += t->table[len];
    cur -= t->table[len];

  } while (cur >= 0);

  sum += cur;
  if (sum < 0 || sum >= FUNC0(t->trans))
    return UZLIB_DATA_ERROR;

  return t->trans[sum];
}