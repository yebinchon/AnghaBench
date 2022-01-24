#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int int32 ;
struct TYPE_10__ {scalar_t__ type; int distance; int length; } ;
struct TYPE_9__ {scalar_t__ size; } ;
typedef  TYPE_1__* TSQuery ;
typedef  TYPE_2__ QueryOperand ;
typedef  char QueryItem ;
typedef  int /*<<< orphan*/  NODE ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 char* FUNC1 (TYPE_1__*) ; 
 char* FUNC2 (TYPE_1__*) ; 
 int HDRSIZETQ ; 
 int /*<<< orphan*/  NOTICE ; 
 scalar_t__ QI_VAL ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 TYPE_1__* FUNC10 (int) ; 
 char* FUNC11 (int /*<<< orphan*/ *,int*) ; 

TSQuery
FUNC12(TSQuery in)
{
	int32		len,
				lenstr,
				commonlen,
				i;
	NODE	   *root;
	int			ladd,
				radd;
	TSQuery		out;
	QueryItem  *items;
	char	   *operands;

	if (in->size == 0)
		return in;

	/* eliminate stop words */
	root = FUNC5(FUNC8(FUNC2(in)), &ladd, &radd);
	if (root == NULL)
	{
		FUNC6(NOTICE,
				(FUNC7("text-search query contains only stop words or doesn't contain lexemes, ignored")));
		out = FUNC10(HDRSIZETQ);
		out->size = 0;
		FUNC3(out, HDRSIZETQ);
		return out;
	}

	/*
	 * Build TSQuery from plain view
	 */

	lenstr = FUNC4(root);
	items = FUNC11(root, &len);
	commonlen = FUNC0(len, lenstr);

	out = FUNC10(commonlen);
	FUNC3(out, commonlen);
	out->size = len;

	FUNC9(FUNC2(out), items, len * sizeof(QueryItem));

	items = FUNC2(out);
	operands = FUNC1(out);
	for (i = 0; i < out->size; i++)
	{
		QueryOperand *op = (QueryOperand *) &items[i];

		if (op->type != QI_VAL)
			continue;

		FUNC9(operands, FUNC1(in) + op->distance, op->length);
		operands[op->length] = '\0';
		op->distance = operands - FUNC1(out);
		operands += op->length + 1;
	}

	return out;
}