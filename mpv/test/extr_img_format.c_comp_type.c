
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mp_component_type { ____Placeholder_mp_component_type } mp_component_type ;





__attribute__((used)) static const char *comp_type(enum mp_component_type type)
{
    switch (type) {
    case 128: return "uint";
    case 129: return "float";
    default: return "unknown";
    }
}
