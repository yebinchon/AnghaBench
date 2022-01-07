
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum module_type { ____Placeholder_module_type } module_type ;
typedef int BOOL ;






__attribute__((used)) static const char* get_module_type(enum module_type type, BOOL virtual)
{
    switch (type)
    {
    case 130: return virtual ? "Virtual ELF" : "ELF";
    case 128: return virtual ? "Virtual PE" : "PE";
    case 129: return virtual ? "Virtual Mach-O" : "Mach-O";
    default: return "---";
    }
}
