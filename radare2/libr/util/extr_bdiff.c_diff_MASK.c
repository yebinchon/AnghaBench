#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pos {int dummy; } ;
struct line {int dummy; } ;
struct hunklist {struct hunk* head; struct hunk* base; } ;
struct hunk {int a1; int a2; int b1; int b2; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct line*,struct line*) ; 
 int FUNC2 (struct line*,int,struct line*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pos*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct line*,struct line*,struct pos*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,struct hunklist*) ; 

__attribute__((used)) static struct hunklist FUNC6(struct line *a, int an, struct line *b, int bn)
{
	struct hunklist l;
	struct hunk *curr;
	struct pos *pos;
	int t;

	/* allocate and fill arrays */
	t = FUNC2(a, an, b, bn);
	pos = (struct pos *)FUNC0(bn ? bn : 1, sizeof(struct pos));
	/* we can't have more matches than lines in the shorter file */
	l.head = l.base = (struct hunk *)FUNC4(sizeof(struct hunk) *
	                                        ((an<bn ? an:bn) + 1));

	if (pos && l.base && t) {
		/* generate the matching block list */
		FUNC5(a, b, pos, 0, an, 0, bn, &l);
		l.head->a1 = l.head->a2 = an;
		l.head->b1 = l.head->b2 = bn;
		l.head++;
	}

	FUNC3(pos);

	/* normalize the hunk list, try to push each hunk towards the end */
	for (curr = l.base; curr != l.head; curr++) {
		struct hunk *next = curr+1;
		int shift = 0;

		if (next == l.head) {
			break;
		}

		if (curr->a2 == next->a1) {
			while (curr->a2 + shift < an && curr->b2 + shift < bn && !FUNC1 (a + curr->a2 + shift, b + curr->b2 + shift)) {
				shift++;
			}
		} else if (curr->b2 == next->b1) {
			while (curr->b2 + shift < bn && curr->a2 + shift < an && !FUNC1 (b + curr->b2 + shift, a + curr->a2 + shift)) {
				shift++;
			}
		}
		if (!shift) {
			continue;
		}
		curr->b2 += shift;
		next->b1 += shift;
		curr->a2 += shift;
		next->a1 += shift;
	}

	return l;
}