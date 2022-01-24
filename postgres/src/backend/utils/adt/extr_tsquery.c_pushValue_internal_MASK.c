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
typedef  scalar_t__ pg_crc32 ;
typedef  scalar_t__ int32 ;
struct TYPE_6__ {int weight; int prefix; int length; int distance; scalar_t__ valcrc; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {int /*<<< orphan*/  polstr; int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__* TSQueryParserState ;
typedef  TYPE_2__ QueryOperand ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int MAXSTRLEN ; 
 int MAXSTRPOS ; 
 int /*<<< orphan*/  QI_VAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(TSQueryParserState state, pg_crc32 valcrc, int distance, int lenval, int weight, bool prefix)
{
	QueryOperand *tmp;

	if (distance >= MAXSTRPOS)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC2("value is too big in tsquery: \"%s\"",
						state->buffer)));
	if (lenval >= MAXSTRLEN)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC2("operand is too long in tsquery: \"%s\"",
						state->buffer)));

	tmp = (QueryOperand *) FUNC4(sizeof(QueryOperand));
	tmp->type = QI_VAL;
	tmp->weight = weight;
	tmp->prefix = prefix;
	tmp->valcrc = (int32) valcrc;
	tmp->length = lenval;
	tmp->distance = distance;

	state->polstr = FUNC3(tmp, state->polstr);
}