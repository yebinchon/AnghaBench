#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ len; char const* name; } ;
typedef  TYPE_1__ ltree_level ;
struct TYPE_13__ {int numlevel; } ;
struct TYPE_12__ {char* operand; TYPE_7__* node; } ;
struct TYPE_11__ {int distance; int flag; scalar_t__ length; } ;
typedef  TYPE_2__ ITEM ;
typedef  TYPE_3__ CHKVAL ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_7__*) ; 
 int LVAR_ANYEND ; 
 int LVAR_INCASE ; 
 int LVAR_SUBLEXEME ; 
 scalar_t__ FUNC2 (TYPE_1__*,char*,scalar_t__,int (*) (char const*,char const*,size_t),int) ; 
 int FUNC3 (char const*,char const*,size_t) ; 
 int FUNC4 (char const*,char const*,size_t) ; 
 int FUNC5 (char const*,char const*,size_t) ; 

__attribute__((used)) static bool
FUNC6(void *checkval, ITEM *val)
{
	ltree_level *level = FUNC1(((CHKVAL *) checkval)->node);
	int			tlen = ((CHKVAL *) checkval)->node->numlevel;
	char	   *op = ((CHKVAL *) checkval)->operand + val->distance;
	int			(*cmpptr) (const char *, const char *, size_t);

	cmpptr = (val->flag & LVAR_INCASE) ? ltree_strncasecmp : strncmp;
	while (tlen > 0)
	{
		if (val->flag & LVAR_SUBLEXEME)
		{
			if (FUNC2(level, op, val->length, cmpptr, (val->flag & LVAR_ANYEND)))
				return true;
		}
		else if (
				 (
				  val->length == level->len ||
				  (level->len > val->length && (val->flag & LVAR_ANYEND))
				  ) &&
				 (*cmpptr) (op, level->name, val->length) == 0)
			return true;

		tlen--;
		level = FUNC0(level);
	}

	return false;
}