#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  attinmeta; } ;
struct TYPE_7__ {int /*<<< orphan*/  t_info; int /*<<< orphan*/  t_tid; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  char OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  TYPE_1__* IndexTuple ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__ FuncCallContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC12 (int) ; 
 char* FUNC13 (char*,char,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,char) ; 

__attribute__((used)) static Datum
FUNC15(FuncCallContext *fctx, Page page, OffsetNumber offset)
{
	char	   *values[6];
	HeapTuple	tuple;
	ItemId		id;
	IndexTuple	itup;
	int			j;
	int			off;
	int			dlen;
	char	   *dump;
	char	   *ptr;

	id = FUNC10(page, offset);

	if (!FUNC6(id))
		FUNC11(ERROR, "invalid ItemId");

	itup = (IndexTuple) FUNC9(page, id);

	j = 0;
	values[j++] = FUNC13("%d", offset);
	values[j++] = FUNC13("(%u,%u)",
						   FUNC7(&itup->t_tid),
						   FUNC8(&itup->t_tid));
	values[j++] = FUNC13("%d", (int) FUNC5(itup));
	values[j++] = FUNC13("%c", FUNC3(itup) ? 't' : 'f');
	values[j++] = FUNC13("%c", FUNC4(itup) ? 't' : 'f');

	ptr = (char *) itup + FUNC2(itup->t_info);
	dlen = FUNC5(itup) - FUNC2(itup->t_info);
	dump = FUNC12(dlen * 3 + 1);
	values[j] = dump;
	for (off = 0; off < dlen; off++)
	{
		if (off > 0)
			*dump++ = ' ';
		FUNC14(dump, "%02x", *(ptr + off) & 0xff);
		dump += 2;
	}

	tuple = FUNC0(fctx->attinmeta, values);

	return FUNC1(tuple);
}