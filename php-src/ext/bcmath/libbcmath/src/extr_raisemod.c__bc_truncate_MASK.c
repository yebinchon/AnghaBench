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
typedef  TYPE_1__* bc_num ;
struct TYPE_5__ {int /*<<< orphan*/  n_len; int /*<<< orphan*/  n_value; int /*<<< orphan*/  n_sign; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (bc_num *num)
{
  bc_num temp;

  temp = FUNC1 ((*num)->n_len, 0);
  temp->n_sign = (*num)->n_sign;
  FUNC2 (temp->n_value, (*num)->n_value, (*num)->n_len);
  FUNC0 (num);
  *num = temp;
}