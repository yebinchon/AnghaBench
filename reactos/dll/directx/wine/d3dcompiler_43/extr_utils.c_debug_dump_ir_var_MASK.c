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
struct hlsl_ir_var {scalar_t__ semantic; int /*<<< orphan*/  name; int /*<<< orphan*/  data_type; scalar_t__ modifiers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(const struct hlsl_ir_var *var)
{
    if (var->modifiers)
        FUNC0("%s ", FUNC2(var->modifiers));
    FUNC0("%s %s", FUNC1(var->data_type), var->name);
    if (var->semantic)
        FUNC0(" : %s", FUNC3(var->semantic));
}