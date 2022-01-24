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
struct TYPE_3__ {struct demangle_component* sub; scalar_t__ num; } ;
struct TYPE_4__ {TYPE_1__ s_unary_num; } ;
struct demangle_component {scalar_t__ type; TYPE_2__ u; } ;
struct d_print_template {int dummy; } ;
struct d_print_mod {int printed; struct d_print_mod* next; struct demangle_component* mod; struct d_print_template* templates; } ;
struct d_print_info {struct d_print_template* templates; struct d_print_mod* modifiers; } ;

/* Variables and functions */
 scalar_t__ DEMANGLE_COMPONENT_ARRAY_TYPE ; 
 scalar_t__ DEMANGLE_COMPONENT_DEFAULT_ARG ; 
 scalar_t__ DEMANGLE_COMPONENT_FUNCTION_TYPE ; 
 scalar_t__ DEMANGLE_COMPONENT_LOCAL_NAME ; 
 int DMGL_JAVA ; 
 int /*<<< orphan*/  FUNC0 (struct d_print_info*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct d_print_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct d_print_info*,char*) ; 
 struct demangle_component* FUNC3 (struct demangle_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct d_print_info*,int,struct demangle_component*,struct d_print_mod*) ; 
 int /*<<< orphan*/  FUNC5 (struct d_print_info*,int,struct demangle_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct d_print_info*,int,struct demangle_component*,struct d_print_mod*) ; 
 int /*<<< orphan*/  FUNC7 (struct d_print_info*,int,struct demangle_component*) ; 
 scalar_t__ FUNC8 (struct d_print_info*) ; 
 struct demangle_component* FUNC9 (struct demangle_component*) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 

__attribute__((used)) static void
FUNC11 (struct d_print_info *dpi, int options,
                  struct d_print_mod *mods, int suffix)
{
  struct d_print_template *hold_dpt;

  if (mods == NULL || FUNC8 (dpi))
    return;

  if (mods->printed
      || (! suffix
	  && (FUNC10 (mods->mod->type))))
    {
      FUNC11 (dpi, options, mods->next, suffix);
      return;
    }

  mods->printed = 1;

  hold_dpt = dpi->templates;
  dpi->templates = mods->templates;

  if (mods->mod->type == DEMANGLE_COMPONENT_FUNCTION_TYPE)
    {
      FUNC6 (dpi, options, mods->mod, mods->next);
      dpi->templates = hold_dpt;
      return;
    }
  else if (mods->mod->type == DEMANGLE_COMPONENT_ARRAY_TYPE)
    {
      FUNC4 (dpi, options, mods->mod, mods->next);
      dpi->templates = hold_dpt;
      return;
    }
  else if (mods->mod->type == DEMANGLE_COMPONENT_LOCAL_NAME)
    {
      struct d_print_mod *hold_modifiers;
      struct demangle_component *dc;

      /* When this is on the modifier stack, we have pulled any
	 qualifiers off the right argument already.  Otherwise, we
	 print it as usual, but don't let the left argument see any
	 modifiers.  */

      hold_modifiers = dpi->modifiers;
      dpi->modifiers = NULL;
      FUNC5 (dpi, options, FUNC3 (mods->mod));
      dpi->modifiers = hold_modifiers;

      if ((options & DMGL_JAVA) == 0)
	FUNC2 (dpi, "::");
      else
	FUNC0 (dpi, '.');

      dc = FUNC9 (mods->mod);

      if (dc->type == DEMANGLE_COMPONENT_DEFAULT_ARG)
	{
	  FUNC2 (dpi, "{default arg#");
	  FUNC1 (dpi, dc->u.s_unary_num.num + 1);
	  FUNC2 (dpi, "}::");
	  dc = dc->u.s_unary_num.sub;
	}

      while (FUNC10 (dc->type))
	dc = FUNC3 (dc);

      FUNC5 (dpi, options, dc);

      dpi->templates = hold_dpt;
      return;
    }

  FUNC7 (dpi, options, mods->mod);

  dpi->templates = hold_dpt;

  FUNC11 (dpi, options, mods->next, suffix);
}