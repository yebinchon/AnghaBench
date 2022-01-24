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
 int /*<<< orphan*/  DEMANGLE_COMPONENT_PTRMEM_TYPE ; 
 struct demangle_component* FUNC0 (struct d_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct d_info*,char) ; 
 struct demangle_component* FUNC2 (struct d_info*,int /*<<< orphan*/ ,struct demangle_component*,struct demangle_component*) ; 

__attribute__((used)) static struct demangle_component *
FUNC3 (struct d_info *di)
{
  struct demangle_component *cl;
  struct demangle_component *mem;

  if (! FUNC1 (di, 'M'))
    return NULL;

  cl = FUNC0 (di);
  if (cl == NULL)
    return NULL;

  /* The ABI says, "The type of a non-static member function is considered
     to be different, for the purposes of substitution, from the type of a
     namespace-scope or static member function whose type appears
     similar. The types of two non-static member functions are considered
     to be different, for the purposes of substitution, if the functions
     are members of different classes. In other words, for the purposes of
     substitution, the class of which the function is a member is
     considered part of the type of function."

     For a pointer to member function, this call to cplus_demangle_type
     will end up adding a (possibly qualified) non-member function type to
     the substitution table, which is not correct; however, the member
     function type will never be used in a substitution, so putting the
     wrong type in the substitution table is harmless.  */

  mem = FUNC0 (di);
  if (mem == NULL)
    return NULL;

  return FUNC2 (di, DEMANGLE_COMPONENT_PTRMEM_TYPE, cl, mem);
}