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
struct cpu_stack_walk {int dummy; } ;
struct TYPE_3__ {int Rsp; int /*<<< orphan*/  Rip; } ;
typedef  int /*<<< orphan*/  DWORD64 ;
typedef  TYPE_1__ CONTEXT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpu_stack_walk*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static BOOL FUNC3(struct cpu_stack_walk* csw, CONTEXT* context)
{
    if (!FUNC1(csw, context->Rsp, &context->Rip, sizeof(DWORD64)))
    {
        FUNC0("Cannot read new frame offset %s\n", FUNC2(context->Rsp));
        return FALSE;
    }
    context->Rsp += sizeof(DWORD64);
    return TRUE;
}