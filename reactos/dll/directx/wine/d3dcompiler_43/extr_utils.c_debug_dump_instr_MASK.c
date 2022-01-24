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
struct hlsl_ir_node {int type; } ;

/* Variables and functions */
#define  HLSL_IR_ASSIGNMENT 135 
#define  HLSL_IR_CONSTANT 134 
#define  HLSL_IR_CONSTRUCTOR 133 
#define  HLSL_IR_DEREF 132 
#define  HLSL_IR_EXPR 131 
#define  HLSL_IR_IF 130 
#define  HLSL_IR_JUMP 129 
#define  HLSL_IR_SWIZZLE 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hlsl_ir_node const*) ; 
 int /*<<< orphan*/  FUNC2 (struct hlsl_ir_node const*) ; 
 int /*<<< orphan*/  FUNC3 (struct hlsl_ir_node const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct hlsl_ir_node const*) ; 
 int /*<<< orphan*/  FUNC14 (struct hlsl_ir_node const*) ; 
 int /*<<< orphan*/  FUNC15 (struct hlsl_ir_node const*) ; 
 int /*<<< orphan*/  FUNC16 (struct hlsl_ir_node const*) ; 
 int /*<<< orphan*/  FUNC17 (struct hlsl_ir_node const*) ; 

__attribute__((used)) static void FUNC18(const struct hlsl_ir_node *instr)
{
    switch (instr->type)
    {
        case HLSL_IR_EXPR:
            FUNC8(FUNC14(instr));
            break;
        case HLSL_IR_DEREF:
            FUNC7(FUNC13(instr));
            break;
        case HLSL_IR_CONSTANT:
            FUNC5(FUNC2(instr));
            break;
        case HLSL_IR_ASSIGNMENT:
            FUNC4(FUNC1(instr));
            break;
        case HLSL_IR_SWIZZLE:
            FUNC11(FUNC17(instr));
            break;
        case HLSL_IR_CONSTRUCTOR:
            FUNC6(FUNC3(instr));
            break;
        case HLSL_IR_JUMP:
            FUNC10(FUNC16(instr));
            break;
        case HLSL_IR_IF:
            FUNC9(FUNC15(instr));
            break;
        default:
            FUNC0("<No dump function for %s>", FUNC12(instr->type));
    }
}