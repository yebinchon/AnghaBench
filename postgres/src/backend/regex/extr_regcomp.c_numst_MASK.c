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
struct subre {short id; struct subre* right; struct subre* left; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int						/* next number */
FUNC1(struct subre *t,
	  int start)				/* starting point for subtree numbers */
{
	int			i;

	FUNC0(t != NULL);

	i = start;
	t->id = (short) i++;
	if (t->left != NULL)
		i = FUNC1(t->left, i);
	if (t->right != NULL)
		i = FUNC1(t->right, i);
	return i;
}