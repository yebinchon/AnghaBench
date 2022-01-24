#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int zero_start; scalar_t__ lsign; } ;
struct TYPE_10__ {int sign_wrote; int num_curr; char* number_p; int num_in; int out_pre_spaces; char* last_relevant; char sign; char* inout_p; int num_count; int /*<<< orphan*/  L_positive_sign; int /*<<< orphan*/  L_negative_sign; TYPE_3__* Num; int /*<<< orphan*/  decimal; int /*<<< orphan*/  inout; } ;
typedef  TYPE_1__ NUMProc ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_elog_output ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int NUM_0 ; 
 int NUM_9 ; 
 int NUM_D ; 
 int NUM_DEC ; 
 scalar_t__ NUM_LSIGN_POST ; 
 scalar_t__ NUM_LSIGN_PRE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10(NUMProc *Np, int id)
{
	int			end;

	if (FUNC5(Np->Num))
		return;

	/* Note: in this elog() output not set '\0' in 'inout' */

#ifdef DEBUG_TO_FROM_CHAR

	/*
	 * Np->num_curr is number of current item in format-picture, it is not
	 * current position in inout!
	 */
	elog(DEBUG_elog_output,
		 "SIGN_WROTE: %d, CURRENT: %d, NUMBER_P: \"%s\", INOUT: \"%s\"",
		 Np->sign_wrote,
		 Np->num_curr,
		 Np->number_p,
		 Np->inout);
#endif
	Np->num_in = false;

	/*
	 * Write sign if real number will write to output Note: IS_PREDEC_SPACE()
	 * handle "9.9" --> " .1"
	 */
	if (Np->sign_wrote == false &&
		(Np->num_curr >= Np->out_pre_spaces || (FUNC6(Np->Num) && Np->Num->zero_start == Np->num_curr)) &&
		(FUNC4(Np) == false || (Np->last_relevant && *Np->last_relevant == '.')))
	{
		if (FUNC3(Np->Num))
		{
			if (Np->Num->lsign == NUM_LSIGN_PRE)
			{
				if (Np->sign == '-')
					FUNC8(Np->inout_p, Np->L_negative_sign);
				else
					FUNC8(Np->inout_p, Np->L_positive_sign);
				Np->inout_p += FUNC9(Np->inout_p);
				Np->sign_wrote = true;
			}
		}
		else if (FUNC0(Np->Num))
		{
			*Np->inout_p = Np->sign == '+' ? ' ' : '<';
			++Np->inout_p;
			Np->sign_wrote = true;
		}
		else if (Np->sign == '+')
		{
			if (!FUNC2(Np->Num))
			{
				*Np->inout_p = ' '; /* Write + */
				++Np->inout_p;
			}
			Np->sign_wrote = true;
		}
		else if (Np->sign == '-')
		{						/* Write - */
			*Np->inout_p = '-';
			++Np->inout_p;
			Np->sign_wrote = true;
		}
	}


	/*
	 * digits / FM / Zero / Dec. point
	 */
	if (id == NUM_9 || id == NUM_0 || id == NUM_D || id == NUM_DEC)
	{
		if (Np->num_curr < Np->out_pre_spaces &&
			(Np->Num->zero_start > Np->num_curr || !FUNC6(Np->Num)))
		{
			/*
			 * Write blank space
			 */
			if (!FUNC2(Np->Num))
			{
				*Np->inout_p = ' '; /* Write ' ' */
				++Np->inout_p;
			}
		}
		else if (FUNC6(Np->Num) &&
				 Np->num_curr < Np->out_pre_spaces &&
				 Np->Num->zero_start <= Np->num_curr)
		{
			/*
			 * Write ZERO
			 */
			*Np->inout_p = '0'; /* Write '0' */
			++Np->inout_p;
			Np->num_in = true;
		}
		else
		{
			/*
			 * Write Decimal point
			 */
			if (*Np->number_p == '.')
			{
				if (!Np->last_relevant || *Np->last_relevant != '.')
				{
					FUNC8(Np->inout_p, Np->decimal);	/* Write DEC/D */
					Np->inout_p += FUNC9(Np->inout_p);
				}

				/*
				 * Ora 'n' -- FM9.9 --> 'n.'
				 */
				else if (FUNC2(Np->Num) &&
						 Np->last_relevant && *Np->last_relevant == '.')
				{
					FUNC8(Np->inout_p, Np->decimal);	/* Write DEC/D */
					Np->inout_p += FUNC9(Np->inout_p);
				}
			}
			else
			{
				/*
				 * Write Digits
				 */
				if (Np->last_relevant && Np->number_p > Np->last_relevant &&
					id != NUM_0)
					;

				/*
				 * '0.1' -- 9.9 --> '  .1'
				 */
				else if (FUNC4(Np))
				{
					if (!FUNC2(Np->Num))
					{
						*Np->inout_p = ' ';
						++Np->inout_p;
					}

					/*
					 * '0' -- FM9.9 --> '0.'
					 */
					else if (Np->last_relevant && *Np->last_relevant == '.')
					{
						*Np->inout_p = '0';
						++Np->inout_p;
					}
				}
				else
				{
					*Np->inout_p = *Np->number_p;	/* Write DIGIT */
					++Np->inout_p;
					Np->num_in = true;
				}
			}
			/* do no exceed string length */
			if (*Np->number_p)
				++Np->number_p;
		}

		end = Np->num_count + (Np->out_pre_spaces ? 1 : 0) + (FUNC1(Np->Num) ? 1 : 0);

		if (Np->last_relevant && Np->last_relevant == Np->number_p)
			end = Np->num_curr;

		if (Np->num_curr + 1 == end)
		{
			if (Np->sign_wrote == true && FUNC0(Np->Num))
			{
				*Np->inout_p = Np->sign == '+' ? ' ' : '>';
				++Np->inout_p;
			}
			else if (FUNC3(Np->Num) && Np->Num->lsign == NUM_LSIGN_POST)
			{
				if (Np->sign == '-')
					FUNC8(Np->inout_p, Np->L_negative_sign);
				else
					FUNC8(Np->inout_p, Np->L_positive_sign);
				Np->inout_p += FUNC9(Np->inout_p);
			}
		}
	}

	++Np->num_curr;
}