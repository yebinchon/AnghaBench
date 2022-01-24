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
struct demangle_component {int type; } ;
struct d_print_info {int dummy; } ;

/* Variables and functions */
#define  DEMANGLE_COMPONENT_COMPLEX 147 
#define  DEMANGLE_COMPONENT_CONST 146 
#define  DEMANGLE_COMPONENT_CONST_THIS 145 
#define  DEMANGLE_COMPONENT_IMAGINARY 144 
#define  DEMANGLE_COMPONENT_NOEXCEPT 143 
#define  DEMANGLE_COMPONENT_POINTER 142 
#define  DEMANGLE_COMPONENT_PTRMEM_TYPE 141 
#define  DEMANGLE_COMPONENT_REFERENCE 140 
#define  DEMANGLE_COMPONENT_REFERENCE_THIS 139 
#define  DEMANGLE_COMPONENT_RESTRICT 138 
#define  DEMANGLE_COMPONENT_RESTRICT_THIS 137 
#define  DEMANGLE_COMPONENT_RVALUE_REFERENCE 136 
#define  DEMANGLE_COMPONENT_RVALUE_REFERENCE_THIS 135 
#define  DEMANGLE_COMPONENT_THROW_SPEC 134 
#define  DEMANGLE_COMPONENT_TRANSACTION_SAFE 133 
#define  DEMANGLE_COMPONENT_TYPED_NAME 132 
#define  DEMANGLE_COMPONENT_VECTOR_TYPE 131 
#define  DEMANGLE_COMPONENT_VENDOR_TYPE_QUAL 130 
#define  DEMANGLE_COMPONENT_VOLATILE 129 
#define  DEMANGLE_COMPONENT_VOLATILE_THIS 128 
 int DMGL_JAVA ; 
 int /*<<< orphan*/  FUNC0 (struct d_print_info*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct d_print_info*,char*) ; 
 char FUNC2 (struct d_print_info*) ; 
 struct demangle_component* FUNC3 (struct demangle_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct d_print_info*,int,struct demangle_component*) ; 
 struct demangle_component* FUNC5 (struct demangle_component*) ; 

__attribute__((used)) static void
FUNC6 (struct d_print_info *dpi, int options,
             struct demangle_component *mod)
{
  switch (mod->type)
    {
    case DEMANGLE_COMPONENT_RESTRICT:
    case DEMANGLE_COMPONENT_RESTRICT_THIS:
      FUNC1 (dpi, " restrict");
      return;
    case DEMANGLE_COMPONENT_VOLATILE:
    case DEMANGLE_COMPONENT_VOLATILE_THIS:
      FUNC1 (dpi, " volatile");
      return;
    case DEMANGLE_COMPONENT_CONST:
    case DEMANGLE_COMPONENT_CONST_THIS:
      FUNC1 (dpi, " const");
      return;
    case DEMANGLE_COMPONENT_TRANSACTION_SAFE:
      FUNC1 (dpi, " transaction_safe");
      return;
    case DEMANGLE_COMPONENT_NOEXCEPT:
      FUNC1 (dpi, " noexcept");
      if (FUNC5 (mod))
	{
	  FUNC0 (dpi, '(');
	  FUNC4 (dpi, options, FUNC5 (mod));
	  FUNC0 (dpi, ')');
	}
      return;
    case DEMANGLE_COMPONENT_THROW_SPEC:
      FUNC1 (dpi, " throw");
      if (FUNC5 (mod))
	{
	  FUNC0 (dpi, '(');
	  FUNC4 (dpi, options, FUNC5 (mod));
	  FUNC0 (dpi, ')');
	}
      return;
    case DEMANGLE_COMPONENT_VENDOR_TYPE_QUAL:
      FUNC0 (dpi, ' ');
      FUNC4 (dpi, options, FUNC5 (mod));
      return;
    case DEMANGLE_COMPONENT_POINTER:
      /* There is no pointer symbol in Java.  */
      if ((options & DMGL_JAVA) == 0)
	FUNC0 (dpi, '*');
      return;
    case DEMANGLE_COMPONENT_REFERENCE_THIS:
      /* For the ref-qualifier, put a space before the &.  */
      FUNC0 (dpi, ' ');
      /* FALLTHRU */
    case DEMANGLE_COMPONENT_REFERENCE:
      FUNC0 (dpi, '&');
      return;
    case DEMANGLE_COMPONENT_RVALUE_REFERENCE_THIS:
      FUNC0 (dpi, ' ');
      /* FALLTHRU */
    case DEMANGLE_COMPONENT_RVALUE_REFERENCE:
      FUNC1 (dpi, "&&");
      return;
    case DEMANGLE_COMPONENT_COMPLEX:
      FUNC1 (dpi, "complex ");
      return;
    case DEMANGLE_COMPONENT_IMAGINARY:
      FUNC1 (dpi, "imaginary ");
      return;
    case DEMANGLE_COMPONENT_PTRMEM_TYPE:
      if (FUNC2 (dpi) != '(')
	FUNC0 (dpi, ' ');
      FUNC4 (dpi, options, FUNC3 (mod));
      FUNC1 (dpi, "::*");
      return;
    case DEMANGLE_COMPONENT_TYPED_NAME:
      FUNC4 (dpi, options, FUNC3 (mod));
      return;
    case DEMANGLE_COMPONENT_VECTOR_TYPE:
      FUNC1 (dpi, " __vector(");
      FUNC4 (dpi, options, FUNC3 (mod));
      FUNC0 (dpi, ')');
      return;

    default:
      /* Otherwise, we have something that won't go back on the
	 modifier stack, so we can just print it.  */
      FUNC4 (dpi, options, mod);
      return;
    }
}