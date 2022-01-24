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
struct cpu_stack_walk {int dummy; } ;
typedef  int /*<<< orphan*/  LPSTACKFRAME64 ;
typedef  int /*<<< orphan*/  CONTEXT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static BOOL FUNC1(struct cpu_stack_walk* csw, LPSTACKFRAME64 frame, CONTEXT* context)
{
    FUNC0("not done\n");
    return FALSE;
}