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
struct TYPE_3__ {int /*<<< orphan*/  writemask; } ;
struct shader_reg {TYPE_1__ u; int /*<<< orphan*/  regnum; } ;
struct asm_parser {int /*<<< orphan*/  status; TYPE_2__* shader; int /*<<< orphan*/  line_no; } ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  PARSE_ERR ; 
 scalar_t__ ST_PIXEL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct asm_parser*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct asm_parser *This, DWORD usage, DWORD num,
                                 const struct shader_reg *reg) {
    if(!This->shader) return;
    if(This->shader->type == ST_PIXEL) {
        FUNC1(This, "Line %u: Output register declared in a pixel shader\n", This->line_no);
        FUNC3(&This->status, PARSE_ERR);
    }
    if(!FUNC2(This->shader, usage, num, 0, TRUE, reg->regnum, reg->u.writemask, FALSE)) {
        FUNC0("Out of memory\n");
        FUNC3(&This->status, PARSE_ERR);
    }
}