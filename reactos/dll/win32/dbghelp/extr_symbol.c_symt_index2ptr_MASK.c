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
struct symt {int dummy; } ;
struct module {int /*<<< orphan*/  vsymt; } ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

struct symt*      FUNC2(struct module* module, DWORD id)
{
#ifdef __x86_64__
    if (!id-- || id >= FUNC1(&module->vsymt)) return NULL;
    return *(struct symt**)FUNC0(&module->vsymt, id);
#else
    return (struct symt*)id;
#endif
}