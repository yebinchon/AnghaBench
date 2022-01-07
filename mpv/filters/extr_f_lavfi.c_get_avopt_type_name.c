
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVOptionType { ____Placeholder_AVOptionType } AVOptionType ;
__attribute__((used)) static const char *get_avopt_type_name(enum AVOptionType type)
{
    switch (type) {
    case 138: return "flags";
    case 135: return "int";
    case 134: return "int64";
    case 140: return "double";
    case 137: return "float";
    case 130: return "string";
    case 132: return "rational";
    case 146: return "binary";
    case 141: return "dict";
    case 129: return "uint64";
    case 136: return "imagesize";
    case 133: return "pixfmt";
    case 131: return "samplefmt";
    case 128: return "fps";
    case 139: return "duration";
    case 143: return "color";
    case 144: return "channellayout";
    case 145: return "bool";
    case 142:
    default:
        return ((void*)0);
    }
}
