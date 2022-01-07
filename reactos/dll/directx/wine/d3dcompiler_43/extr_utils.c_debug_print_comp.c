
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
const char *debug_print_comp(DWORD comp)
{
    switch (comp)
    {
        case 128: return "";
        case 132: return "_gt";
        case 134: return "_eq";
        case 133: return "_ge";
        case 130: return "_lt";
        case 129: return "_ne";
        case 131: return "_le";
        default: return "_unknown";
    }
}
