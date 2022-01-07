
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int vec4_count; int data; } ;
struct wined3d_sm4_data {TYPE_2__ icb; } ;
struct TYPE_3__ {TYPE_2__* icb; } ;
struct wined3d_shader_instruction {TYPE_1__ declaration; int handler_idx; } ;
typedef enum wined3d_sm4_shader_data_type { ____Placeholder_wined3d_sm4_shader_data_type } wined3d_sm4_shader_data_type ;
typedef int DWORD ;


 int FIXME (char*,unsigned int) ;
 unsigned int MAX_IMMEDIATE_CONSTANT_BUFFER_SIZE ;
 int WINED3DSIH_NOP ;
 int WINED3DSIH_TABLE_SIZE ;
 int WINED3D_SM4_SHADER_DATA_IMMEDIATE_CONSTANT_BUFFER ;
 int WINED3D_SM4_SHADER_DATA_TYPE_MASK ;
 int WINED3D_SM4_SHADER_DATA_TYPE_SHIFT ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static void shader_sm4_read_shader_data(struct wined3d_shader_instruction *ins,
        DWORD opcode, DWORD opcode_token, const DWORD *tokens, unsigned int token_count,
        struct wined3d_sm4_data *priv)
{
    enum wined3d_sm4_shader_data_type type;
    unsigned int icb_size;

    type = (opcode_token & WINED3D_SM4_SHADER_DATA_TYPE_MASK) >> WINED3D_SM4_SHADER_DATA_TYPE_SHIFT;
    if (type != WINED3D_SM4_SHADER_DATA_IMMEDIATE_CONSTANT_BUFFER)
    {
        FIXME("Ignoring shader data type %#x.\n", type);
        ins->handler_idx = WINED3DSIH_NOP;
        return;
    }

    ++tokens;
    icb_size = token_count - 1;
    if (icb_size % 4 || icb_size > MAX_IMMEDIATE_CONSTANT_BUFFER_SIZE)
    {
        FIXME("Unexpected immediate constant buffer size %u.\n", icb_size);
        ins->handler_idx = WINED3DSIH_TABLE_SIZE;
        return;
    }

    priv->icb.vec4_count = icb_size / 4;
    memcpy(priv->icb.data, tokens, sizeof(*tokens) * icb_size);
    ins->declaration.icb = &priv->icb;
}
