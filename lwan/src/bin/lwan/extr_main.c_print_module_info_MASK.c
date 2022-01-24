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
struct lwan_module_info {char* name; } ;
typedef  int /*<<< orphan*/  lwan_module ;

/* Variables and functions */
 struct lwan_module_info* __start_lwan_module ; 
 struct lwan_module_info const* __stop_lwan_module ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(void)
{
    extern const struct lwan_module_info FUNC2(lwan_module);
    extern const struct lwan_module_info FUNC3(lwan_module);
    const struct lwan_module_info *module;

    FUNC0("Available modules:\n");
    for (module = __start_lwan_module; module < __stop_lwan_module; module++) {
        FUNC0(" * %s\n", module->name);
    }
}