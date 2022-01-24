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
struct vector {int dummy; } ;
struct TYPE_3__ {scalar_t__ tag; } ;
struct symt_ht {TYPE_1__ symt; } ;
struct symt_function {scalar_t__ address; } ;
struct TYPE_4__ {int /*<<< orphan*/  ModuleName; } ;
struct module {TYPE_2__ module; } ;

/* Variables and functions */
 scalar_t__ SymTagFunction ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct module*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct module*,struct symt_function*,unsigned int,unsigned int,scalar_t__) ; 
 struct symt_ht* FUNC4 (struct module*,unsigned long) ; 
 unsigned int* FUNC5 (struct vector const*,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct module* module, unsigned long address,
                                   const struct vector* v, unsigned file, unsigned line)
{
    struct symt_function*       func;
    struct symt_ht*             symt;
    unsigned*                   psrc;

    if (!file || !(psrc = FUNC5(v, file - 1))) return;

    FUNC0("%s %lx %s %u\n",
          FUNC1(module->module.ModuleName), address, FUNC2(module, *psrc), line);
    if (!(symt = FUNC4(module, address)) ||
        symt->symt.tag != SymTagFunction) return;
    func = (struct symt_function*)symt;
    FUNC3(module, func, *psrc, line, address - func->address);
}