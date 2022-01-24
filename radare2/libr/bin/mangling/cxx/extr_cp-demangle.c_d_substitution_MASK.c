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
struct demangle_component {int dummy; } ;
struct d_standard_sub_info {char code; char const* set_last_name; int set_last_name_len; char* full_expansion; int full_len; char* simple_expansion; int simple_len; } ;
struct d_info {int options; int expansion; void* last_name; struct demangle_component** subs; scalar_t__ next_sub; } ;

/* Variables and functions */
 int DMGL_VERBOSE ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 struct demangle_component* FUNC2 (struct d_info*,struct demangle_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct d_info*,struct demangle_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct d_info*,char) ; 
 void* FUNC5 (struct d_info*,char const*,int) ; 
 char FUNC6 (struct d_info*) ; 
 char FUNC7 (struct d_info*) ; 
 struct d_standard_sub_info* standard_subs ; 

__attribute__((used)) static struct demangle_component *
FUNC8 (struct d_info *di, int prefix)
{
  char c;

  if (! FUNC4 (di, 'S'))
    return NULL;

  c = FUNC6 (di);
  if (c == '_' || FUNC0 (c) || FUNC1 (c))
    {
      unsigned int id;

      id = 0;
      if (c != '_')
	{
	  do
	    {
	      unsigned int new_id;

	      if (FUNC0 (c))
		new_id = id * 36 + c - '0';
	      else if (FUNC1 (c))
		new_id = id * 36 + c - 'A' + 10;
	      else
		return NULL;
	      if (new_id < id)
		return NULL;
	      id = new_id;
	      c = FUNC6 (di);
	    }
	  while (c != '_');

	  ++id;
	}

      if (id >= (unsigned int) di->next_sub)
	return NULL;

      return di->subs[id];
    }
  else
    {
      int verbose;
      const struct d_standard_sub_info *p;
      const struct d_standard_sub_info *pend;

      verbose = (di->options & DMGL_VERBOSE) != 0;
      if (! verbose && prefix)
	{
	  char peek;

	  peek = FUNC7 (di);
	  if (peek == 'C' || peek == 'D')
	    verbose = 1;
	}

      pend = (&standard_subs[0]
	      + sizeof standard_subs / sizeof standard_subs[0]);
      for (p = &standard_subs[0]; p < pend; ++p)
	{
	  if (c == p->code)
	    {
	      const char *s;
	      int len;
	      struct demangle_component *dc;

	      if (p->set_last_name != NULL)
		di->last_name = FUNC5 (di, p->set_last_name,
					    p->set_last_name_len);
	      if (verbose)
		{
		  s = p->full_expansion;
		  len = p->full_len;
		}
	      else
		{
		  s = p->simple_expansion;
		  len = p->simple_len;
		}
	      di->expansion += len;
	      dc = FUNC5 (di, s, len);
	      if (FUNC7 (di) == 'B')
		{
		  /* If there are ABI tags on the abbreviation, it becomes
		     a substitution candidate.  */
		  dc = FUNC2 (di, dc);
		  if (! FUNC3 (di, dc))
		    return NULL;
		}
	      return dc;
	    }
	}

      return NULL;
    }
}