#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct source_location {int dummy; } ;
struct parse_parameter {int /*<<< orphan*/  modifiers; int /*<<< orphan*/  reg_reservation; int /*<<< orphan*/  semantic; int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
struct list {int dummy; } ;
struct hlsl_ir_var {int /*<<< orphan*/  param_entry; int /*<<< orphan*/  modifiers; int /*<<< orphan*/  reg_reservation; int /*<<< orphan*/  semantic; int /*<<< orphan*/  name; struct source_location loc; int /*<<< orphan*/  data_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  cur_scope; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct hlsl_ir_var*,int /*<<< orphan*/ ) ; 
 struct hlsl_ir_var* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct hlsl_ir_var*) ; 
 TYPE_1__ hlsl_ctx ; 
 int /*<<< orphan*/  FUNC4 (struct list*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC5(struct list *list, struct parse_parameter *param, const struct source_location *loc)
{
    struct hlsl_ir_var *decl = FUNC2(sizeof(*decl));

    if (!decl)
    {
        FUNC0("Out of memory.\n");
        return FALSE;
    }
    decl->data_type = param->type;
    decl->loc = *loc;
    decl->name = param->name;
    decl->semantic = param->semantic;
    decl->reg_reservation = param->reg_reservation;
    decl->modifiers = param->modifiers;

    if (!FUNC1(hlsl_ctx.cur_scope, decl, FALSE))
    {
        FUNC3(decl);
        return FALSE;
    }
    FUNC4(list, &decl->param_entry);
    return TRUE;
}