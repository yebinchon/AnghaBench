#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
struct TYPE_6__ {char* op; char* cur; int buflen; char* buf; TYPE_1__* curpol; } ;
struct TYPE_5__ {scalar_t__ type; int distance; int length; int flag; scalar_t__ val; } ;
typedef  TYPE_2__ INFIX ;

/* Variables and functions */
 int LVAR_ANYEND ; 
 int LVAR_INCASE ; 
 int LVAR_SUBLEXEME ; 
 scalar_t__ OPR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 scalar_t__ VAL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 void* FUNC5 (char*,char) ; 

__attribute__((used)) static void
FUNC6(INFIX *in, bool first)
{
	/* since this function recurses, it could be driven to stack overflow. */
	FUNC1();

	if (in->curpol->type == VAL)
	{
		char	   *op = in->op + in->curpol->distance;

		FUNC0(in, in->curpol->length * 2 + 5);
		while (*op)
		{
			*(in->cur) = *op;
			op++;
			in->cur++;
		}
		if (in->curpol->flag & LVAR_SUBLEXEME)
		{
			*(in->cur) = '%';
			in->cur++;
		}
		if (in->curpol->flag & LVAR_INCASE)
		{
			*(in->cur) = '@';
			in->cur++;
		}
		if (in->curpol->flag & LVAR_ANYEND)
		{
			*(in->cur) = '*';
			in->cur++;
		}
		*(in->cur) = '\0';
		in->curpol++;
	}
	else if (in->curpol->val == (int32) '!')
	{
		bool		isopr = false;

		FUNC0(in, 1);
		*(in->cur) = '!';
		in->cur++;
		*(in->cur) = '\0';
		in->curpol++;
		if (in->curpol->type == OPR)
		{
			isopr = true;
			FUNC0(in, 2);
			FUNC4(in->cur, "( ");
			in->cur = FUNC5(in->cur, '\0');
		}
		FUNC6(in, isopr);
		if (isopr)
		{
			FUNC0(in, 2);
			FUNC4(in->cur, " )");
			in->cur = FUNC5(in->cur, '\0');
		}
	}
	else
	{
		int32		op = in->curpol->val;
		INFIX		nrm;

		in->curpol++;
		if (op == (int32) '|' && !first)
		{
			FUNC0(in, 2);
			FUNC4(in->cur, "( ");
			in->cur = FUNC5(in->cur, '\0');
		}

		nrm.curpol = in->curpol;
		nrm.op = in->op;
		nrm.buflen = 16;
		nrm.cur = nrm.buf = (char *) FUNC2(sizeof(char) * nrm.buflen);

		/* get right operand */
		FUNC6(&nrm, false);

		/* get & print left operand */
		in->curpol = nrm.curpol;
		FUNC6(in, false);

		/* print operator & right operand */
		FUNC0(in, 3 + (nrm.cur - nrm.buf));
		FUNC4(in->cur, " %c %s", op, nrm.buf);
		in->cur = FUNC5(in->cur, '\0');
		FUNC3(nrm.buf);

		if (op == (int32) '|' && !first)
		{
			FUNC0(in, 2);
			FUNC4(in->cur, " )");
			in->cur = FUNC5(in->cur, '\0');
		}
	}
}