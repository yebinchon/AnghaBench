
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int major; } ;
struct wined3d_sm1_data {TYPE_1__ shader_version; } ;
typedef int DWORD ;


 unsigned int WINED3DSPR_ADDR ;
 unsigned int WINED3DSP_NOSWIZZLE ;
 int const WINED3D_SM1_ADDRESS_MODE_RELATIVE ;
 unsigned int WINED3D_SM1_REGISTER_TYPE_MASK ;
 unsigned int WINED3D_SM1_REGISTER_TYPE_MASK2 ;
 unsigned int WINED3D_SM1_REGISTER_TYPE_SHIFT ;
 unsigned int WINED3D_SM1_REGISTER_TYPE_SHIFT2 ;
 unsigned int WINED3D_SM1_SWIZZLE_SHIFT ;

__attribute__((used)) static unsigned int shader_get_param(const struct wined3d_sm1_data *priv, const DWORD *ptr,
        DWORD *token, DWORD *addr_token)
{
    unsigned int count = 1;

    *token = *ptr;





    if (*ptr & WINED3D_SM1_ADDRESS_MODE_RELATIVE)
    {
        if (priv->shader_version.major < 2)
        {
            *addr_token = (1u << 31)
                    | ((WINED3DSPR_ADDR << WINED3D_SM1_REGISTER_TYPE_SHIFT2) & WINED3D_SM1_REGISTER_TYPE_MASK2)
                    | ((WINED3DSPR_ADDR << WINED3D_SM1_REGISTER_TYPE_SHIFT) & WINED3D_SM1_REGISTER_TYPE_MASK)
                    | (WINED3DSP_NOSWIZZLE << WINED3D_SM1_SWIZZLE_SHIFT);
        }
        else
        {
            *addr_token = *(ptr + 1);
            ++count;
        }
    }

    return count;
}
