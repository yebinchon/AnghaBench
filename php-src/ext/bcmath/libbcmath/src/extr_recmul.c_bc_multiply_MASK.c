#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* bc_num ;
struct TYPE_11__ {int n_len; int n_scale; scalar_t__ n_sign; int /*<<< orphan*/  n_ptr; int /*<<< orphan*/  n_value; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 void* MINUS ; 
 void* PLUS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,TYPE_1__*,int,TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

void
FUNC6 (bc_num n1, bc_num n2, bc_num *prod, int scale)
{
  bc_num pval;
  int len1, len2;
  int full_scale, prod_scale;

  /* Initialize things. */
  len1 = n1->n_len + n1->n_scale;
  len2 = n2->n_len + n2->n_scale;
  full_scale = n1->n_scale + n2->n_scale;
  prod_scale = FUNC1(full_scale,FUNC0(scale,FUNC0(n1->n_scale,n2->n_scale)));

  /* Do the multiply */
  FUNC2 (n1, len1, n2, len2, &pval, full_scale);

  /* Assign to prod and clean up the number. */
  pval->n_sign = ( n1->n_sign == n2->n_sign ? PLUS : MINUS );
  pval->n_value = pval->n_ptr;
  pval->n_len = len2 + len1 + 1 - full_scale;
  pval->n_scale = prod_scale;
  FUNC3 (pval);
  if (FUNC5 (pval))
    pval->n_sign = PLUS;
  FUNC4 (prod);
  *prod = pval;
}