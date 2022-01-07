
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_shader_register {int type; int immconst_type; TYPE_1__* idx; } ;
struct TYPE_2__ {int offset; } ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int WINED3D_IMMCONST_SCALAR ;

__attribute__((used)) static inline BOOL shader_is_scalar(const struct wined3d_shader_register *reg)
{
    switch (reg->type)
    {
        case 128:

            if (reg->idx[0].offset)
                return TRUE;

            return FALSE;

        case 136:
        case 135:
        case 134:
        case 137:
        case 132:
        case 130:
        case 129:
            return TRUE;

        case 131:
            switch (reg->idx[0].offset)
            {
                case 0:
                    return FALSE;
                case 1:
                    return TRUE;
                default:
                    return FALSE;
            }

        case 133:
            return reg->immconst_type == WINED3D_IMMCONST_SCALAR;

        default:
            return FALSE;
    }
}
