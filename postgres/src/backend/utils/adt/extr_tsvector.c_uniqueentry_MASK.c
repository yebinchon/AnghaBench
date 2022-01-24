#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_10__ {scalar_t__ len; size_t pos; int haspos; } ;
struct TYPE_11__ {int poslen; struct TYPE_11__* pos; TYPE_1__ entry; } ;
typedef  TYPE_2__ WordEntryPos ;
typedef  TYPE_2__ WordEntryIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  compareentry ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int,int,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int) ; 
 scalar_t__ FUNC6 (char*,char*,scalar_t__) ; 
 void* FUNC7 (TYPE_2__*,int) ; 

__attribute__((used)) static int
FUNC8(WordEntryIN *a, int l, char *buf, int *outbuflen)
{
	int			buflen;
	WordEntryIN *ptr,
			   *res;

	FUNC0(l >= 1);

	if (l > 1)
		FUNC4((void *) a, l, sizeof(WordEntryIN), compareentry,
				  (void *) buf);

	buflen = 0;
	res = a;
	ptr = a + 1;
	while (ptr - a < l)
	{
		if (!(ptr->entry.len == res->entry.len &&
			  FUNC6(&buf[ptr->entry.pos], &buf[res->entry.pos],
					  res->entry.len) == 0))
		{
			/* done accumulating data into *res, count space needed */
			buflen += res->entry.len;
			if (res->entry.haspos)
			{
				res->poslen = FUNC7(res->pos, res->poslen);
				buflen = FUNC1(buflen);
				buflen += res->poslen * sizeof(WordEntryPos) + sizeof(uint16);
			}
			res++;
			if (res != ptr)
				FUNC2(res, ptr, sizeof(WordEntryIN));
		}
		else if (ptr->entry.haspos)
		{
			if (res->entry.haspos)
			{
				/* append ptr's positions to res's positions */
				int			newlen = ptr->poslen + res->poslen;

				res->pos = (WordEntryPos *)
					FUNC5(res->pos, newlen * sizeof(WordEntryPos));
				FUNC2(&res->pos[res->poslen], ptr->pos,
					   ptr->poslen * sizeof(WordEntryPos));
				res->poslen = newlen;
				FUNC3(ptr->pos);
			}
			else
			{
				/* just give ptr's positions to pos */
				res->entry.haspos = 1;
				res->pos = ptr->pos;
				res->poslen = ptr->poslen;
			}
		}
		ptr++;
	}

	/* count space needed for last item */
	buflen += res->entry.len;
	if (res->entry.haspos)
	{
		res->poslen = FUNC7(res->pos, res->poslen);
		buflen = FUNC1(buflen);
		buflen += res->poslen * sizeof(WordEntryPos) + sizeof(uint16);
	}

	*outbuflen = buflen;
	return res + 1 - a;
}