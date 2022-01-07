
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_module_info {char* name; } ;
typedef int lwan_module ;


 struct lwan_module_info* __start_lwan_module ;
 struct lwan_module_info const* __stop_lwan_module ;
 int printf (char*,...) ;

__attribute__((used)) static void print_module_info(void)
{
    extern const struct lwan_module_info SECTION_START(lwan_module);
    extern const struct lwan_module_info SECTION_END(lwan_module);
    const struct lwan_module_info *module;

    printf("Available modules:\n");
    for (module = __start_lwan_module; module < __stop_lwan_module; module++) {
        printf(" * %s\n", module->name);
    }
}
