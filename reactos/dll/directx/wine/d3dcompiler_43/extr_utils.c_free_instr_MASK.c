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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
#define  HLSL_IR_ASSIGNMENT 135 
#define  HLSL_IR_CONSTANT 134 
#define  HLSL_IR_CONSTRUCTOR 133 
#define  HLSL_IR_DEREF 132 
#define  HLSL_IR_EXPR 131 
#define  HLSL_IR_IF 130 
#define  HLSL_IR_JUMP 129 
#define  HLSL_IR_SWIZZLE 128 
 int /*<<< orphan*/  FUNC1 (struct hlsl_ir_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct hlsl_ir_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct hlsl_ir_node*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct hlsl_ir_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct hlsl_ir_node*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct hlsl_ir_node*) ; 
 int /*<<< orphan*/  FUNC16 (struct hlsl_ir_node*) ; 
 int /*<<< orphan*/  FUNC17 (struct hlsl_ir_node*) ; 

void FUNC18(struct hlsl_ir_node *node)
{
    switch (node->type)
    {
        case HLSL_IR_CONSTANT:
            FUNC8(FUNC2(node));
            break;
        case HLSL_IR_DEREF:
            FUNC10(FUNC5(node));
            break;
        case HLSL_IR_SWIZZLE:
            FUNC14(FUNC17(node));
            break;
        case HLSL_IR_CONSTRUCTOR:
            FUNC9(FUNC3(node));
            break;
        case HLSL_IR_EXPR:
            FUNC11(FUNC6(node));
            break;
        case HLSL_IR_ASSIGNMENT:
            FUNC7(FUNC1(node));
            break;
        case HLSL_IR_IF:
            FUNC12(FUNC15(node));
            break;
        case HLSL_IR_JUMP:
            FUNC13(FUNC16(node));
            break;
        default:
            FUNC0("Unsupported node type %s\n", FUNC4(node->type));
    }
}