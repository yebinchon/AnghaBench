#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int pos; scalar_t__ p; scalar_t__ q; TYPE_2__* begin; TYPE_2__* end; } ;
struct TYPE_11__ {int /*<<< orphan*/  pos; } ;
struct TYPE_10__ {int /*<<< orphan*/  query; } ;
typedef  TYPE_1__ QueryRepresentation ;
typedef  TYPE_2__ DocRepresentation ;
typedef  TYPE_3__ CoverExt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  TS_EXEC_CALC_NOT ; 
 int /*<<< orphan*/  TS_EXEC_EMPTY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  checkcondition_QueryOperand ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static bool
FUNC6(DocRepresentation *doc, int len, QueryRepresentation *qr, CoverExt *ext)
{
	DocRepresentation *ptr;
	int			lastpos = ext->pos;
	bool		found = false;

	/*
	 * since this function recurses, it could be driven to stack overflow.
	 * (though any decent compiler will optimize away the tail-recursion.
	 */
	FUNC3();

	FUNC5(qr, false);

	ext->p = INT_MAX;
	ext->q = 0;
	ptr = doc + ext->pos;

	/* find upper bound of cover from current position, move up */
	while (ptr - doc < len)
	{
		FUNC4(qr, ptr);

		if (FUNC1(FUNC0(qr->query), (void *) qr,
					   TS_EXEC_EMPTY, checkcondition_QueryOperand))
		{
			if (FUNC2(ptr->pos) > ext->q)
			{
				ext->q = FUNC2(ptr->pos);
				ext->end = ptr;
				lastpos = ptr - doc;
				found = true;
			}
			break;
		}
		ptr++;
	}

	if (!found)
		return false;

	FUNC5(qr, true);

	ptr = doc + lastpos;

	/* find lower bound of cover from found upper bound, move down */
	while (ptr >= doc + ext->pos)
	{
		/*
		 * we scan doc from right to left, so pos info in reverse order!
		 */
		FUNC4(qr, ptr);

		if (FUNC1(FUNC0(qr->query), (void *) qr,
					   TS_EXEC_CALC_NOT, checkcondition_QueryOperand))
		{
			if (FUNC2(ptr->pos) < ext->p)
			{
				ext->begin = ptr;
				ext->p = FUNC2(ptr->pos);
			}
			break;
		}
		ptr--;
	}

	if (ext->p <= ext->q)
	{
		/*
		 * set position for next try to next lexeme after beginning of found
		 * cover
		 */
		ext->pos = (ptr - doc) + 1;
		return true;
	}

	ext->pos++;
	return FUNC6(doc, len, qr, ext);
}