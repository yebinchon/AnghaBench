#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* bc_num ;
struct TYPE_16__ {scalar_t__ n_scale; int n_len; scalar_t__* n_value; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_WARNING ; 
 char FALSE ; 
 int /*<<< orphan*/  FUNC1 (int,long) ; 
 int FUNC2 (long,int /*<<< orphan*/ ) ; 
 char TRUE ; 
 int /*<<< orphan*/  _one_ ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*,TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*,TYPE_1__**,int) ; 
 long FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

void
FUNC9 (bc_num num1, bc_num num2, bc_num *result, int scale)
{
   bc_num temp, power;
   long exponent;
   int rscale;
   int pwrscale;
   int calcscale;
   char neg;

   /* Check the exponent for scale digits and convert to a long. */
   if (num2->n_scale != 0)
     FUNC8 (NULL, E_WARNING, "non-zero scale in exponent");
   exponent = FUNC7 (num2);
   if (exponent == 0 && (num2->n_len > 1 || num2->n_value[0] != 0))
       FUNC8 (NULL, E_WARNING, "exponent too large");

   /* Special case if exponent is a zero. */
   if (exponent == 0)
     {
       FUNC5 (result);
       *result = FUNC3 (FUNC0(_one_));
       return;
     }

   /* Other initializations. */
   if (exponent < 0)
     {
       neg = TRUE;
       exponent = -exponent;
       rscale = scale;
     }
   else
     {
       neg = FALSE;
       rscale = FUNC2 (num1->n_scale*exponent, FUNC1(scale, num1->n_scale));
     }

   /* Set initial value of temp.  */
   power = FUNC3 (num1);
   pwrscale = num1->n_scale;
   while ((exponent & 1) == 0)
     {
       pwrscale = 2*pwrscale;
       FUNC6 (power, power, &power, pwrscale);
       exponent = exponent >> 1;
     }
   temp = FUNC3 (power);
   calcscale = pwrscale;
   exponent = exponent >> 1;

   /* Do the calculation. */
   while (exponent > 0)
     {
       pwrscale = 2*pwrscale;
       FUNC6 (power, power, &power, pwrscale);
       if ((exponent & 1) == 1) {
	 calcscale = pwrscale + calcscale;
	 FUNC6 (temp, power, &temp, calcscale);
       }
       exponent = exponent >> 1;
     }

   /* Assign the value. */
   if (neg)
     {
       FUNC4 (FUNC0(_one_), temp, result, rscale);
       FUNC5 (&temp);
     }
   else
     {
       FUNC5 (result);
       *result = temp;
       if ((*result)->n_scale > rscale)
	 (*result)->n_scale = rscale;
     }
   FUNC5 (&power);
}