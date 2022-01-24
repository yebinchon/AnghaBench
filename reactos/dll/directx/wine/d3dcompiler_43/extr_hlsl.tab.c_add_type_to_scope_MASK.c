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
struct hlsl_type {int /*<<< orphan*/  scope_entry; int /*<<< orphan*/  name; } ;
struct hlsl_scope {int /*<<< orphan*/  types; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (struct hlsl_scope*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC2(struct hlsl_scope *scope, struct hlsl_type *def)
{
    if (FUNC0(scope, def->name, FALSE))
        return FALSE;

    FUNC1(&scope->types, def->name, &def->scope_entry);
    return TRUE;
}