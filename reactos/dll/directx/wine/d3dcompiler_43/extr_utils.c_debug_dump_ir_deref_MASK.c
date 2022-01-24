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
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* field; int /*<<< orphan*/  record; } ;
struct TYPE_7__ {int /*<<< orphan*/  index; int /*<<< orphan*/  array; } ;
struct TYPE_8__ {TYPE_2__ record; TYPE_3__ array; int /*<<< orphan*/  var; } ;
struct hlsl_ir_deref {int type; TYPE_4__ v; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
#define  HLSL_IR_DEREF_ARRAY 130 
#define  HLSL_IR_DEREF_RECORD 129 
#define  HLSL_IR_DEREF_VAR 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const struct hlsl_ir_deref *deref)
{
    switch (deref->type)
    {
        case HLSL_IR_DEREF_VAR:
            FUNC0("deref(");
            FUNC2(deref->v.var);
            FUNC0(")");
            break;
        case HLSL_IR_DEREF_ARRAY:
            FUNC1(deref->v.array.array);
            FUNC0("[");
            FUNC1(deref->v.array.index);
            FUNC0("]");
            break;
        case HLSL_IR_DEREF_RECORD:
            FUNC1(deref->v.record.record);
            FUNC0(".%s", FUNC3(deref->v.record.field->name));
            break;
    }
}