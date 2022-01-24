#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* bc_num ;
struct TYPE_27__ {scalar_t__ n_scale; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_WARNING ; 
 int FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 int /*<<< orphan*/  _one_ ; 
 int /*<<< orphan*/  _two_ ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*,TYPE_1__**,TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_1__*,TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_1__*,TYPE_1__**,int) ; 
 TYPE_1__* FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

int
FUNC14 (bc_num base, bc_num expo, bc_num mod, bc_num *result, int scale)
{
  bc_num power, exponent, modulus, parity, temp;
  int rscale;

  /* Check for correct numbers. */
  if (FUNC9(mod)) return -1;
  if (FUNC8(expo)) return -1;

  /* Set initial values.  */
  power = FUNC4 (base);
  exponent = FUNC4 (expo);
  modulus = FUNC4 (mod);
  temp = FUNC4 (FUNC0(_one_));
  FUNC7(&parity);

  /* Check the base for scale digits. */
  if (power->n_scale != 0)
    {
      FUNC13 (NULL, E_WARNING, "non-zero scale in base");
      FUNC2 (&power);
    }

  /* Check the exponent for scale digits. */
  if (exponent->n_scale != 0)
    {
      FUNC13 (NULL, E_WARNING, "non-zero scale in exponent");
      FUNC2 (&exponent);
    }

  /* Check the modulus for scale digits. */
  if (modulus->n_scale != 0)
    {
      FUNC13 (NULL, E_WARNING, "non-zero scale in modulus");
      FUNC2 (&modulus);
    }

  /* Do the calculation. */
  rscale = FUNC1(scale, power->n_scale);
  if ( !FUNC3(modulus, FUNC0(_one_)) )
    {
      FUNC6 (&temp);
      temp = FUNC12 (1, scale);
    }
  else
    {
      while ( !FUNC9(exponent) )
	{
	  (void) FUNC5 (exponent, FUNC0(_two_), &exponent, &parity, 0);
	  if ( !FUNC9(parity) )
	    {
	      FUNC11 (temp, power, &temp, rscale);
	      (void) FUNC10 (temp, modulus, &temp, scale);
	    }

	  FUNC11 (power, power, &power, rscale);
	  (void) FUNC10 (power, modulus, &power, scale);
	}
    }

  /* Assign the value. */
  FUNC6 (&power);
  FUNC6 (&exponent);
  FUNC6 (&modulus);
  FUNC6 (result);
  FUNC6 (&parity);
  *result = temp;
  return 0;	/* Everything is OK. */
}