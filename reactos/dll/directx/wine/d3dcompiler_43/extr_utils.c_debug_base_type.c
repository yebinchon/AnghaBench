
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlsl_type {int base_type; int sampler_dim; } ;


 int FIXME (char*,int) ;
__attribute__((used)) static const char *debug_base_type(const struct hlsl_type *type)
{
    const char *name = "(unknown)";

    switch (type->base_type)
    {
        case 132: name = "float"; break;
        case 131: name = "half"; break;
        case 133: name = "double"; break;
        case 130: name = "int"; break;
        case 128: name = "uint"; break;
        case 134: name = "bool"; break;
        case 129:
            switch (type->sampler_dim)
            {
                case 135: name = "sampler"; break;
                case 139: name = "sampler1D"; break;
                case 138: name = "sampler2D"; break;
                case 137: name = "sampler3D"; break;
                case 136: name = "samplerCUBE"; break;
            }
            break;
        default:
            FIXME("Unhandled case %u\n", type->base_type);
    }
    return name;
}
