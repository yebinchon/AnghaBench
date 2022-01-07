
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_sm1_opcode_info {unsigned int param_count; } ;
struct TYPE_2__ {int major; } ;
struct wined3d_sm1_data {TYPE_1__ shader_version; } ;
typedef unsigned int DWORD ;


 unsigned int WINED3D_SM1_INSTRUCTION_LENGTH_MASK ;
 unsigned int WINED3D_SM1_INSTRUCTION_LENGTH_SHIFT ;

__attribute__((used)) static unsigned int shader_skip_opcode(const struct wined3d_sm1_data *priv,
        const struct wined3d_sm1_opcode_info *opcode_info, DWORD opcode_token)
{
    unsigned int length;


    length = (opcode_token & WINED3D_SM1_INSTRUCTION_LENGTH_MASK) >> WINED3D_SM1_INSTRUCTION_LENGTH_SHIFT;
    return (priv->shader_version.major >= 2) ? length : opcode_info->param_count;
}
