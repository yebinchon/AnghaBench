#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int int8 ;
typedef  int int16 ;
struct TYPE_7__ {scalar_t__ oper; int distance; } ;
struct TYPE_8__ {int distance; int length; int weight; scalar_t__ prefix; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_1__ qoperator; TYPE_2__ qoperand; } ;
struct TYPE_9__ {char* op; char* cur; int buflen; char* buf; TYPE_6__* curpol; } ;
typedef  TYPE_2__ QueryOperand ;
typedef  TYPE_3__ INFIX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  ERROR ; 
#define  OP_AND 130 
 scalar_t__ OP_NOT ; 
#define  OP_OR 129 
#define  OP_PHRASE 128 
 scalar_t__ QI_VAL ; 
 int FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 () ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,...) ; 
 void* FUNC10 (char*,char) ; 
 scalar_t__ FUNC11 (char*,char) ; 

__attribute__((used)) static void
FUNC12(INFIX *in, int parentPriority, bool rightPhraseOp)
{
	/* since this function recurses, it could be driven to stack overflow. */
	FUNC3();

	if (in->curpol->type == QI_VAL)
	{
		QueryOperand *curpol = &in->curpol->qoperand;
		char	   *op = in->op + curpol->distance;
		int			clen;

		FUNC2(in, curpol->length * (FUNC7() + 1) + 2 + 6);
		*(in->cur) = '\'';
		in->cur++;
		while (*op)
		{
			if (FUNC11(op, '\''))
			{
				*(in->cur) = '\'';
				in->cur++;
			}
			else if (FUNC11(op, '\\'))
			{
				*(in->cur) = '\\';
				in->cur++;
			}
			FUNC0(in->cur, op);

			clen = FUNC8(op);
			op += clen;
			in->cur += clen;
		}
		*(in->cur) = '\'';
		in->cur++;
		if (curpol->weight || curpol->prefix)
		{
			*(in->cur) = ':';
			in->cur++;
			if (curpol->prefix)
			{
				*(in->cur) = '*';
				in->cur++;
			}
			if (curpol->weight & (1 << 3))
			{
				*(in->cur) = 'A';
				in->cur++;
			}
			if (curpol->weight & (1 << 2))
			{
				*(in->cur) = 'B';
				in->cur++;
			}
			if (curpol->weight & (1 << 1))
			{
				*(in->cur) = 'C';
				in->cur++;
			}
			if (curpol->weight & 1)
			{
				*(in->cur) = 'D';
				in->cur++;
			}
		}
		*(in->cur) = '\0';
		in->curpol++;
	}
	else if (in->curpol->qoperator.oper == OP_NOT)
	{
		int			priority = FUNC1(in->curpol);

		if (priority < parentPriority)
		{
			FUNC2(in, 2);
			FUNC9(in->cur, "( ");
			in->cur = FUNC10(in->cur, '\0');
		}
		FUNC2(in, 1);
		*(in->cur) = '!';
		in->cur++;
		*(in->cur) = '\0';
		in->curpol++;

		FUNC12(in, priority, false);
		if (priority < parentPriority)
		{
			FUNC2(in, 2);
			FUNC9(in->cur, " )");
			in->cur = FUNC10(in->cur, '\0');
		}
	}
	else
	{
		int8		op = in->curpol->qoperator.oper;
		int			priority = FUNC1(in->curpol);
		int16		distance = in->curpol->qoperator.distance;
		INFIX		nrm;
		bool		needParenthesis = false;

		in->curpol++;
		if (priority < parentPriority ||
		/* phrase operator depends on order */
			(op == OP_PHRASE && rightPhraseOp))
		{
			needParenthesis = true;
			FUNC2(in, 2);
			FUNC9(in->cur, "( ");
			in->cur = FUNC10(in->cur, '\0');
		}

		nrm.curpol = in->curpol;
		nrm.op = in->op;
		nrm.buflen = 16;
		nrm.cur = nrm.buf = (char *) FUNC5(sizeof(char) * nrm.buflen);

		/* get right operand */
		FUNC12(&nrm, priority, (op == OP_PHRASE));

		/* get & print left operand */
		in->curpol = nrm.curpol;
		FUNC12(in, priority, false);

		/* print operator & right operand */
		FUNC2(in, 3 + (2 + 10 /* distance */ ) + (nrm.cur - nrm.buf));
		switch (op)
		{
			case OP_OR:
				FUNC9(in->cur, " | %s", nrm.buf);
				break;
			case OP_AND:
				FUNC9(in->cur, " & %s", nrm.buf);
				break;
			case OP_PHRASE:
				if (distance != 1)
					FUNC9(in->cur, " <%d> %s", distance, nrm.buf);
				else
					FUNC9(in->cur, " <-> %s", nrm.buf);
				break;
			default:
				/* OP_NOT is handled in above if-branch */
				FUNC4(ERROR, "unrecognized operator type: %d", op);
		}
		in->cur = FUNC10(in->cur, '\0');
		FUNC6(nrm.buf);

		if (needParenthesis)
		{
			FUNC2(in, 2);
			FUNC9(in->cur, " )");
			in->cur = FUNC10(in->cur, '\0');
		}
	}
}