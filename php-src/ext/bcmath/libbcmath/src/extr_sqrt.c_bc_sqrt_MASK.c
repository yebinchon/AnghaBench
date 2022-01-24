#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* bc_num ;
struct TYPE_28__ {int n_scale; int* n_value; int n_len; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int TRUE ; 
 int /*<<< orphan*/  _one_ ; 
 int /*<<< orphan*/  _zero_ ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,TYPE_1__**,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*,TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__**,int) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_1__*,TYPE_1__**,int) ; 
 TYPE_1__* FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_1__*,TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,TYPE_1__*,TYPE_1__**,int) ; 

int
FUNC15 (bc_num *num, int scale)
{
  int rscale, cmp_res, done;
  int cscale;
  bc_num guess, guess1, point5, diff;

  /* Initial checks. */
  cmp_res = FUNC4 (*num, FUNC0(_zero_));
  if (cmp_res < 0)
    return 0;		/* error */
  else
    {
      if (cmp_res == 0)
	{
	  FUNC7 (num);
	  *num = FUNC5 (FUNC0(_zero_));
	  return 1;
	}
    }
  cmp_res = FUNC4 (*num, FUNC0(_one_));
  if (cmp_res == 0)
    {
      FUNC7 (num);
      *num = FUNC5 (FUNC0(_one_));
      return 1;
    }

  /* Initialize the variables. */
  rscale = FUNC1 (scale, (*num)->n_scale);
  FUNC8(&guess);
  FUNC8(&guess1);
  FUNC8(&diff);
  point5 = FUNC12 (1,1);
  point5->n_value[1] = 5;


  /* Calculate the initial guess. */
  if (cmp_res < 0)
    {
      /* The number is between 0 and 1.  Guess should start at 1. */
      guess = FUNC5 (FUNC0(_one_));
      cscale = (*num)->n_scale;
    }
  else
    {
      /* The number is greater than 1.  Guess should start at 10^(exp/2). */
      FUNC9 (&guess,10);

      FUNC9 (&guess1,(*num)->n_len);
      FUNC11 (guess1, point5, &guess1, 0);
      guess1->n_scale = 0;
      FUNC13 (guess, guess1, &guess, 0);
      FUNC7 (&guess1);
      cscale = 3;
    }

  /* Find the square root using Newton's algorithm. */
  done = FALSE;
  while (!done)
    {
      FUNC7 (&guess1);
      guess1 = FUNC5 (guess);
      FUNC6 (*num, guess, &guess, cscale);
      FUNC3 (guess, guess1, &guess, 0);
      FUNC11 (guess, point5, &guess, cscale);
      FUNC14 (guess, guess1, &diff, cscale+1);
      if (FUNC10 (diff, cscale))
	{
	  if (cscale < rscale+1)
	    cscale = FUNC2 (cscale*3, rscale+1);
	  else
	    done = TRUE;
	}
    }

  /* Assign the number and clean up. */
  FUNC7 (num);
  FUNC6 (guess,FUNC0(_one_),num,rscale);
  FUNC7 (&guess);
  FUNC7 (&guess1);
  FUNC7 (&point5);
  FUNC7 (&diff);
  return 1;
}