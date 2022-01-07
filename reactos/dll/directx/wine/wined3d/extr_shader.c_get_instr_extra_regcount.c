
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum WINED3D_SHADER_INSTRUCTION_HANDLER { ____Placeholder_WINED3D_SHADER_INSTRUCTION_HANDLER } WINED3D_SHADER_INSTRUCTION_HANDLER ;
__attribute__((used)) static unsigned int get_instr_extra_regcount(enum WINED3D_SHADER_INSTRUCTION_HANDLER instr, unsigned int param)
{
    switch (instr)
    {
        case 128:
        case 130:
            return param == 1 ? 3 : 0;

        case 129:
        case 131:
            return param == 1 ? 2 : 0;

        case 132:
            return param == 1 ? 1 : 0;

        default:
            return 0;
    }
}
