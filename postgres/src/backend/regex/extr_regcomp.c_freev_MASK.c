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
struct vars {scalar_t__ subs; scalar_t__ sub10; int err; int /*<<< orphan*/  nlacons; int /*<<< orphan*/ * lacons; int /*<<< orphan*/ * cv2; int /*<<< orphan*/ * cv; int /*<<< orphan*/ * treechain; int /*<<< orphan*/ * tree; int /*<<< orphan*/ * nfa; int /*<<< orphan*/ * re; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct vars*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vars*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct vars *v,
	  int err)
{
	if (v->re != NULL)
		FUNC7(v->re);
	if (v->subs != v->sub10)
		FUNC1(v->subs);
	if (v->nfa != NULL)
		FUNC5(v->nfa);
	if (v->tree != NULL)
		FUNC6(v, v->tree);
	if (v->treechain != NULL)
		FUNC2(v);
	if (v->cv != NULL)
		FUNC3(v->cv);
	if (v->cv2 != NULL)
		FUNC3(v->cv2);
	if (v->lacons != NULL)
		FUNC4(v->lacons, v->nlacons);
	FUNC0(err);					/* nop if err==0 */

	return v->err;
}