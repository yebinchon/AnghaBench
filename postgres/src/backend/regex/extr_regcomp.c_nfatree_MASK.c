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
struct vars {int dummy; } ;
struct subre {struct subre* right; struct subre* left; int /*<<< orphan*/ * begin; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DISCARD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 long FUNC1 (struct vars*,struct subre*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static long						/* optimize results from top node */
FUNC2(struct vars *v,
		struct subre *t,
		FILE *f)				/* for debug output */
{
	FUNC0(t != NULL && t->begin != NULL);

	if (t->left != NULL)
		(DISCARD) FUNC2(v, t->left, f);
	if (t->right != NULL)
		(DISCARD) FUNC2(v, t->right, f);

	return FUNC1(v, t, 0, f);
}