#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct location {scalar_t__ offset; int /*<<< orphan*/  kind; } ;
struct TYPE_6__ {int /*<<< orphan*/ * string; scalar_t__ uvalue; } ;
struct attribute {TYPE_1__ u; } ;
struct TYPE_7__ {int /*<<< orphan*/  func; TYPE_4__* ctx; } ;
typedef  TYPE_2__ dwarf2_subprogram_t ;
typedef  int /*<<< orphan*/  dwarf2_debug_info_t ;
struct TYPE_8__ {int /*<<< orphan*/  module; scalar_t__ load_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_low_pc ; 
 int /*<<< orphan*/  DW_AT_name ; 
 int /*<<< orphan*/  SymTagLabel ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,struct attribute*) ; 
 int /*<<< orphan*/  loc_absolute ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct location*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(dwarf2_subprogram_t* subpgm,
                                          const dwarf2_debug_info_t* di)
{
    struct attribute    name;
    struct attribute    low_pc;
    struct location     loc;

    FUNC0("%s, for %s\n", FUNC1(subpgm->ctx), FUNC2(di));

    if (!FUNC3(subpgm->ctx, di, DW_AT_low_pc, &low_pc)) low_pc.u.uvalue = 0;
    if (!FUNC3(subpgm->ctx, di, DW_AT_name, &name))
        name.u.string = NULL;

    loc.kind = loc_absolute;
    loc.offset = subpgm->ctx->load_offset + low_pc.u.uvalue;
    FUNC4(subpgm->ctx->module, subpgm->func, SymTagLabel,
                            &loc, name.u.string);
}