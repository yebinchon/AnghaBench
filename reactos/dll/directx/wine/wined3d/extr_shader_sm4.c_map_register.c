
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
struct wined3d_sm4_data {unsigned int* output_map; TYPE_1__ shader_version; } ;
struct wined3d_shader_register {TYPE_2__* idx; int type; } ;
struct TYPE_4__ {unsigned int offset; } ;


 unsigned int ARRAY_SIZE (unsigned int*) ;
 int ERR (char*,unsigned int) ;
 int WINED3DSPR_COLOROUT ;
 int WINED3DSPR_OUTPUT ;


__attribute__((used)) static void map_register(const struct wined3d_sm4_data *priv, struct wined3d_shader_register *reg)
{
    switch (priv->shader_version.type)
    {
        case 128:
            if (reg->type == WINED3DSPR_OUTPUT)
            {
                unsigned int reg_idx = reg->idx[0].offset;

                if (reg_idx >= ARRAY_SIZE(priv->output_map))
                {
                    ERR("Invalid output index %u.\n", reg_idx);
                    break;
                }

                reg->type = WINED3DSPR_COLOROUT;
                reg->idx[0].offset = priv->output_map[reg_idx];
            }
            break;

        default:
            break;
    }
}
