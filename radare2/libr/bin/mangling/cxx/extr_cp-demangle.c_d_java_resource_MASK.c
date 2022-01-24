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
struct d_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEMANGLE_COMPONENT_COMPOUND_NAME ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_JAVA_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (struct d_info*,int) ; 
 struct demangle_component* FUNC1 (struct d_info*,char) ; 
 struct demangle_component* FUNC2 (struct d_info*,int /*<<< orphan*/ ,struct demangle_component*,struct demangle_component*) ; 
 struct demangle_component* FUNC3 (struct d_info*,char const*,int) ; 
 char FUNC4 (struct d_info*) ; 
 int FUNC5 (struct d_info*) ; 
 char* FUNC6 (struct d_info*) ; 

__attribute__((used)) static struct demangle_component *
FUNC7 (struct d_info *di)
{
  struct demangle_component *p = NULL;
  struct demangle_component *next = NULL;
  int len, i;
  char c;
  const char *str;

  len = FUNC5 (di);
  if (len <= 1)
    return NULL;

  /* Eat the leading '_'.  */
  if (FUNC4 (di) != '_')
    return NULL;
  len--;

  str = FUNC6 (di);
  i = 0;

  while (len > 0)
    {
      c = str[i];
      if (!c)
	return NULL;

      /* Each chunk is either a '$' escape...  */
      if (c == '$')
	{
	  i++;
	  switch (str[i++])
	    {
	    case 'S':
	      c = '/';
	      break;
	    case '_':
	      c = '.';
	      break;
	    case '$':
	      c = '$';
	      break;
	    default:
	      return NULL;
	    }
	  next = FUNC1 (di, c);
	  FUNC0 (di, i);
	  str = FUNC6 (di);
	  len -= i;
	  i = 0;
	  if (next == NULL)
	    return NULL;
	}
      /* ... or a sequence of characters.  */
      else
	{
	  while (i < len && str[i] && str[i] != '$')
	    i++;

	  next = FUNC3 (di, str, i);
	  FUNC0 (di, i);
	  str = FUNC6 (di);
	  len -= i;
	  i = 0;
	  if (next == NULL)
	    return NULL;
	}

      if (p == NULL)
	p = next;
      else
	{
	  p = FUNC2 (di, DEMANGLE_COMPONENT_COMPOUND_NAME, p, next);
	  if (p == NULL)
	    return NULL;
	}
    }

  p = FUNC2 (di, DEMANGLE_COMPONENT_JAVA_RESOURCE, p, NULL);

  return p;
}