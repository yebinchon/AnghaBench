#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ numlevel; } ;
typedef  TYPE_1__ ltree ;

/* Variables and functions */
 char* FUNC0 (TYPE_1__*) ; 
 int LTREE_HDRSIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static ltree *
FUNC5(ltree *a, ltree *b)
{
	ltree	   *r;

	r = (ltree *) FUNC4(FUNC2(a) + FUNC2(b) - LTREE_HDRSIZE);
	FUNC1(r, FUNC2(a) + FUNC2(b) - LTREE_HDRSIZE);
	r->numlevel = a->numlevel + b->numlevel;

	FUNC3(FUNC0(r), FUNC0(a), FUNC2(a) - LTREE_HDRSIZE);
	FUNC3(((char *) FUNC0(r)) + FUNC2(a) - LTREE_HDRSIZE,
		   FUNC0(b),
		   FUNC2(b) - LTREE_HDRSIZE);
	return r;
}