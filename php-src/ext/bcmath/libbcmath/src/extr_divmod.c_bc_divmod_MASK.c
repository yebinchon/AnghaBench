#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* bc_num ;
struct TYPE_20__ {scalar_t__ n_scale; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,scalar_t__) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*,TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*,TYPE_1__**,int) ; 

int
FUNC8 (bc_num num1, bc_num num2, bc_num *quot, bc_num *rem, int scale)
{
  bc_num quotient = NULL;
  bc_num temp;
  int rscale;

  /* Check for correct numbers. */
  if (FUNC5 (num2)) return -1;

  /* Calculate final scale. */
  rscale = FUNC0 (num1->n_scale, num2->n_scale+scale);
  FUNC4(&temp);

  /* Calculate it. */
  FUNC2 (num1, num2, &temp, 0);
  if (quot)
    quotient = FUNC1 (temp);
  FUNC6 (temp, num2, &temp, rscale);
  FUNC7 (num1, temp, rem, rscale);
  FUNC3 (&temp);

  if (quot)
    {
      FUNC3 (quot);
      *quot = quotient;
    }

  return 0;	/* Everything is OK. */
}