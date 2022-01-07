
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_module_info {struct lwan_module const* module; int name; } ;
struct lwan_module {int dummy; } ;
typedef int lwan_module ;


 struct lwan_module_info* __start_lwan_module ;
 struct lwan_module_info const* __stop_lwan_module ;
 scalar_t__ streq (int ,char const*) ;

__attribute__((used)) __attribute__((no_sanitize_address))
static const struct lwan_module *find_module(const char *name)
{
    extern const struct lwan_module_info SECTION_START(lwan_module);
    extern const struct lwan_module_info SECTION_END(lwan_module);
    const struct lwan_module_info *module;

    for (module = __start_lwan_module; module < __stop_lwan_module; module++) {
        if (streq(module->name, name))
            return module->module;
    }

    return ((void*)0);
}
