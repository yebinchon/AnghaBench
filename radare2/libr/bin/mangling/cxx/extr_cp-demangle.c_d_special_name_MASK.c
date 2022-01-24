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
struct d_info {int expansion; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEMANGLE_COMPONENT_CONSTRUCTION_VTABLE ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_COVARIANT_THUNK ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_GUARD ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_HIDDEN_ALIAS ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_JAVA_CLASS ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_NONTRANSACTION_CLONE ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_REFTEMP ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_THUNK ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_TLS_INIT ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_TLS_WRAPPER ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_TPARM_OBJ ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_TRANSACTION_CLONE ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_TYPEINFO ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_TYPEINFO_FN ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_TYPEINFO_NAME ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_VIRTUAL_THUNK ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_VTABLE ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_VTT ; 
 struct demangle_component* FUNC0 (struct d_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct d_info*,char) ; 
 scalar_t__ FUNC2 (struct d_info*,char) ; 
 struct demangle_component* FUNC3 (struct d_info*,int /*<<< orphan*/ ) ; 
 struct demangle_component* FUNC4 (struct d_info*) ; 
 struct demangle_component* FUNC5 (struct d_info*,int /*<<< orphan*/ ,struct demangle_component*,struct demangle_component*) ; 
 struct demangle_component* FUNC6 (struct d_info*) ; 
 int FUNC7 (struct d_info*) ; 
 int FUNC8 (struct d_info*) ; 
 struct demangle_component* FUNC9 (struct d_info*) ; 
 struct demangle_component* FUNC10 (struct d_info*) ; 

__attribute__((used)) static struct demangle_component *
FUNC11 (struct d_info *di)
{
  di->expansion += 20;
  if (FUNC2 (di, 'T'))
    {
      switch (FUNC7 (di))
	{
	case 'V':
	  di->expansion -= 5;
	  return FUNC5 (di, DEMANGLE_COMPONENT_VTABLE,
			      FUNC0 (di), NULL);
	case 'T':
	  di->expansion -= 10;
	  return FUNC5 (di, DEMANGLE_COMPONENT_VTT,
			      FUNC0 (di), NULL);
	case 'I':
	  return FUNC5 (di, DEMANGLE_COMPONENT_TYPEINFO,
			      FUNC0 (di), NULL);
	case 'S':
	  return FUNC5 (di, DEMANGLE_COMPONENT_TYPEINFO_NAME,
			      FUNC0 (di), NULL);

	case 'h':
	  if (! FUNC1 (di, 'h'))
	    return NULL;
	  return FUNC5 (di, DEMANGLE_COMPONENT_THUNK,
			      FUNC3 (di, 0), NULL);

	case 'v':
	  if (! FUNC1 (di, 'v'))
	    return NULL;
	  return FUNC5 (di, DEMANGLE_COMPONENT_VIRTUAL_THUNK,
			      FUNC3 (di, 0), NULL);

	case 'c':
	  if (! FUNC1 (di, '\0'))
	    return NULL;
	  if (! FUNC1 (di, '\0'))
	    return NULL;
	  return FUNC5 (di, DEMANGLE_COMPONENT_COVARIANT_THUNK,
			      FUNC3 (di, 0), NULL);

	case 'C':
	  {
	    struct demangle_component *derived_type;
	    int offset;
	    struct demangle_component *base_type;

	    derived_type = FUNC0 (di);
	    offset = FUNC8 (di);
	    if (offset < 0)
	      return NULL;
	    if (! FUNC2 (di, '_'))
	      return NULL;
	    base_type = FUNC0 (di);
	    /* We don't display the offset.  FIXME: We should display
	       it in verbose mode.  */
	    di->expansion += 5;
	    return FUNC5 (di, DEMANGLE_COMPONENT_CONSTRUCTION_VTABLE,
				base_type, derived_type);
	  }

	case 'F':
	  return FUNC5 (di, DEMANGLE_COMPONENT_TYPEINFO_FN,
			      FUNC0 (di), NULL);
	case 'J':
	  return FUNC5 (di, DEMANGLE_COMPONENT_JAVA_CLASS,
			      FUNC0 (di), NULL);

	case 'H':
	  return FUNC5 (di, DEMANGLE_COMPONENT_TLS_INIT,
			      FUNC6 (di), NULL);

	case 'W':
	  return FUNC5 (di, DEMANGLE_COMPONENT_TLS_WRAPPER,
			      FUNC6 (di), NULL);

	case 'A':
	  return FUNC5 (di, DEMANGLE_COMPONENT_TPARM_OBJ,
			      FUNC10 (di), NULL);

	default:
	  return NULL;
	}
    }
  else if (FUNC2 (di, 'G'))
    {
      switch (FUNC7 (di))
	{
	case 'V':
	  return FUNC5 (di, DEMANGLE_COMPONENT_GUARD,
			      FUNC6 (di), NULL);

	case 'R':
	  {
	    struct demangle_component *name = FUNC6 (di);
	    return FUNC5 (di, DEMANGLE_COMPONENT_REFTEMP, name,
				FUNC9 (di));
	  }

	case 'A':
	  return FUNC5 (di, DEMANGLE_COMPONENT_HIDDEN_ALIAS,
			      FUNC3 (di, 0), NULL);

	case 'T':
	  switch (FUNC7 (di))
	    {
	    case 'n':
	      return FUNC5 (di, DEMANGLE_COMPONENT_NONTRANSACTION_CLONE,
				  FUNC3 (di, 0), NULL);
	    default:
	      /* ??? The proposal is that other letters (such as 'h') stand
		 for different variants of transaction cloning, such as
		 compiling directly for hardware transaction support.  But
		 they still should all be transactional clones of some sort
		 so go ahead and call them that.  */
	    case 't':
	      return FUNC5 (di, DEMANGLE_COMPONENT_TRANSACTION_CLONE,
				  FUNC3 (di, 0), NULL);
	    }

	case 'r':
	  return FUNC4 (di);

	default:
	  return NULL;
	}
    }
  else
    return NULL;
}