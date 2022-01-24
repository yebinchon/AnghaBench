#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_state ;
typedef  void* mrb_bool ;
struct TYPE_3__ {void* parse_error; void* has_line_max; int /*<<< orphan*/  line_max; void* has_line_min; int /*<<< orphan*/  line_min; } ;
typedef  TYPE_1__ listcmd_parser_state ;

/* Variables and functions */
 void* FALSE ; 
 void* TRUE ; 
 scalar_t__ FUNC0 (char**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char**,char) ; 

__attribute__((used)) static mrb_bool
FUNC2(mrb_state *mrb, char **sp, listcmd_parser_state *st)
{
  if (*sp == NULL || **sp == '\0') {
    return FALSE;
  }

  st->has_line_min = FALSE;
  st->has_line_max = FALSE;

  if (FUNC0(sp, &st->line_min)) {
    st->has_line_min = TRUE;
  }
  else {
    return FALSE;
  }

  if (FUNC1(sp, ',')) {
    if (FUNC0(sp, &st->line_max)) {
      st->has_line_max = TRUE;
    }
    else {
      st->parse_error = TRUE;
      return FALSE;
    }
  }
  return TRUE;
}