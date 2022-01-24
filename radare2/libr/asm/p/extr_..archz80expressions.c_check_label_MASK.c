#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct label {char* name; TYPE_2__* ref; struct label* next; } ;
struct TYPE_4__ {int /*<<< orphan*/  done; } ;
struct TYPE_3__ {int line; } ;

/* Variables and functions */
 int addr ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,char*) ; 
 scalar_t__ FUNC3 (unsigned char const) ; 
 size_t sp ; 
 TYPE_1__* stack ; 
 int /*<<< orphan*/  stderr ; 
 unsigned int FUNC4 (char*) ; 
 int FUNC5 (char*,char const*,unsigned int) ; 
 int verbose ; 

__attribute__((used)) static int
FUNC6 (struct label *labels, const char **p, struct label **ret,
	     struct label **previous, int force_skip)
{
  struct label *l;
  const char *c;
  unsigned s2;
  *p = FUNC1 (*p);
  for (c = *p; FUNC3 ((const unsigned char)*c) || *c == '_' || *c == '.'; ++c)
    {
    }
  s2 = c - *p;
  for (l = labels; l; l = l->next)
    {
      unsigned s1, s;
      int cmp;
      s1 = FUNC4 (l->name);
      s = s1 < s2 ? s1 : s2;
      cmp = FUNC5 (l->name, *p, s);
      if (cmp > 0 || (cmp == 0 && s1 > s))
	{
	  if (force_skip)
	    *p = c;
	  return 0;
	}
      if (cmp < 0 || s2 > s)
	{
	  if (previous)
	    *previous = l;
	  continue;
	}
      *p = c;
      /* if label is not valid, compute it */
      if (l->ref)
	{
	  FUNC0 (l->ref, 1);
	  if (!l->ref->done)
	    {
	      /* label was not valid, and isn't computable.  tell the
	       * caller that it doesn't exist, so it will try again later.
	       * Set ret to show actual existence.  */
	      if (verbose >= 6)
		FUNC2 (stderr,
			 "%5d (0x%04x): returning invalid label %s.\n",
			 stack[sp].line, addr, l->name);
	      *ret = l;
	      return 0;
	    }
	}
      *ret = l;
      return 1;
    }
  if (force_skip)
    *p = c;
  return 0;
}