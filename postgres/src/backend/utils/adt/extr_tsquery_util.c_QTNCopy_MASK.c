#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* word; int nchild; struct TYPE_8__** child; int /*<<< orphan*/  flags; TYPE_2__* valnode; } ;
struct TYPE_6__ {int length; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ qoperand; } ;
typedef  TYPE_2__ QueryItem ;
typedef  TYPE_3__ QTNode ;

/* Variables and functions */
 scalar_t__ QI_VAL ; 
 int /*<<< orphan*/  QTN_NEEDFREE ; 
 int /*<<< orphan*/  QTN_WORDFREE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (int) ; 

QTNode *
FUNC3(QTNode *in)
{
	QTNode	   *out;

	/* since this function recurses, it could be driven to stack overflow. */
	FUNC0();

	out = (QTNode *) FUNC2(sizeof(QTNode));

	*out = *in;
	out->valnode = (QueryItem *) FUNC2(sizeof(QueryItem));
	*(out->valnode) = *(in->valnode);
	out->flags |= QTN_NEEDFREE;

	if (in->valnode->type == QI_VAL)
	{
		out->word = FUNC2(in->valnode->qoperand.length + 1);
		FUNC1(out->word, in->word, in->valnode->qoperand.length);
		out->word[in->valnode->qoperand.length] = '\0';
		out->flags |= QTN_WORDFREE;
	}
	else
	{
		int			i;

		out->child = (QTNode **) FUNC2(sizeof(QTNode *) * in->nchild);

		for (i = 0; i < in->nchild; i++)
			out->child[i] = FUNC3(in->child[i]);
	}

	return out;
}