
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_format_id { ____Placeholder_wined3d_format_id } wined3d_format_id ;
typedef int D3DFORMAT ;
typedef int BYTE ;
 int FIXME (char*,int) ;
 int WINED3DFMT_A8_UNORM ;
 int WINED3DFMT_B10G10R10A2_UNORM ;
 int WINED3DFMT_B2G3R3A8_UNORM ;
 int WINED3DFMT_B2G3R3_UNORM ;
 int WINED3DFMT_B4G4R4A4_UNORM ;
 int WINED3DFMT_B4G4R4X4_UNORM ;
 int WINED3DFMT_B5G5R5A1_UNORM ;
 int WINED3DFMT_B5G5R5X1_UNORM ;
 int WINED3DFMT_B5G6R5_UNORM ;
 int WINED3DFMT_B8G8R8A8_UNORM ;
 int WINED3DFMT_B8G8R8X8_UNORM ;
 int WINED3DFMT_B8G8R8_UNORM ;
 int WINED3DFMT_D16_LOCKABLE ;
 int WINED3DFMT_D16_UNORM ;
 int WINED3DFMT_D24_UNORM_S8_UINT ;
 int WINED3DFMT_D32_FLOAT ;
 int WINED3DFMT_D32_UNORM ;
 int WINED3DFMT_L16_UNORM ;
 int WINED3DFMT_L4A4_UNORM ;
 int WINED3DFMT_L8A8_UNORM ;
 int WINED3DFMT_L8_UNORM ;
 int WINED3DFMT_P8_UINT ;
 int WINED3DFMT_P8_UINT_A8_UNORM ;
 int WINED3DFMT_R10G10B10A2_UNORM ;
 int WINED3DFMT_R10G10B10_SNORM_A2_UNORM ;
 int WINED3DFMT_R16G16B16A16_FLOAT ;
 int WINED3DFMT_R16G16B16A16_SNORM ;
 int WINED3DFMT_R16G16B16A16_UNORM ;
 int WINED3DFMT_R16G16_FLOAT ;
 int WINED3DFMT_R16G16_SNORM ;
 int WINED3DFMT_R16G16_UNORM ;
 int WINED3DFMT_R16_FLOAT ;
 int WINED3DFMT_R16_UINT ;
 int WINED3DFMT_R32G32B32A32_FLOAT ;
 int WINED3DFMT_R32G32_FLOAT ;
 int WINED3DFMT_R32_FLOAT ;
 int WINED3DFMT_R32_UINT ;
 int WINED3DFMT_R5G5_SNORM_L6_UNORM ;
 int WINED3DFMT_R8G8B8A8_SNORM ;
 int WINED3DFMT_R8G8B8A8_UNORM ;
 int WINED3DFMT_R8G8B8X8_UNORM ;
 int WINED3DFMT_R8G8_SNORM ;
 int WINED3DFMT_R8G8_SNORM_Cx ;
 int WINED3DFMT_R8G8_SNORM_L8X8_UNORM ;
 int WINED3DFMT_S1_UINT_D15_UNORM ;
 int WINED3DFMT_S4X4_UINT_D24_UNORM ;
 int WINED3DFMT_S8_UINT_D24_FLOAT ;
 int WINED3DFMT_UNKNOWN ;
 int WINED3DFMT_X8D24_UNORM ;
 scalar_t__ isprint (int ) ;

enum wined3d_format_id wined3dformat_from_d3dformat(D3DFORMAT format)
{
    BYTE *c = (BYTE *)&format;


    if (isprint(c[0]) && isprint(c[1]) && isprint(c[2]) && isprint(c[3])) return format;

    switch(format)
    {
        case 135: return WINED3DFMT_UNKNOWN;
        case 136: return WINED3DFMT_B8G8R8_UNORM;
        case 162: return WINED3DFMT_B8G8R8A8_UNORM;
        case 128: return WINED3DFMT_B8G8R8X8_UNORM;
        case 137: return WINED3DFMT_B5G6R5_UNORM;
        case 132: return WINED3DFMT_B5G5R5X1_UNORM;
        case 174: return WINED3DFMT_B5G5R5A1_UNORM;
        case 168: return WINED3DFMT_B4G4R4A4_UNORM;
        case 138: return WINED3DFMT_B2G3R3_UNORM;
        case 167: return WINED3DFMT_A8_UNORM;
        case 163: return WINED3DFMT_B2G3R3A8_UNORM;
        case 131: return WINED3DFMT_B4G4R4X4_UNORM;
        case 173: return WINED3DFMT_R10G10B10A2_UNORM;
        case 166: return WINED3DFMT_R8G8B8A8_UNORM;
        case 130: return WINED3DFMT_R8G8B8X8_UNORM;
        case 151: return WINED3DFMT_R16G16_UNORM;
        case 172: return WINED3DFMT_B10G10R10A2_UNORM;
        case 176: return WINED3DFMT_R16G16B16A16_UNORM;
        case 164: return WINED3DFMT_P8_UINT_A8_UNORM;
        case 143: return WINED3DFMT_P8_UINT;
        case 144: return WINED3DFMT_L8_UNORM;
        case 165: return WINED3DFMT_L8A8_UNORM;
        case 169: return WINED3DFMT_L4A4_UNORM;
        case 133: return WINED3DFMT_R8G8_SNORM;
        case 145: return WINED3DFMT_R5G5_SNORM_L6_UNORM;
        case 129: return WINED3DFMT_R8G8_SNORM_L8X8_UNORM;
        case 141: return WINED3DFMT_R8G8B8A8_SNORM;
        case 134: return WINED3DFMT_R16G16_SNORM;
        case 171: return WINED3DFMT_R10G10B10_SNORM_A2_UNORM;
        case 158: return WINED3DFMT_D16_LOCKABLE;
        case 153: return WINED3DFMT_D32_UNORM;
        case 160: return WINED3DFMT_S1_UINT_D15_UNORM;
        case 156: return WINED3DFMT_D24_UNORM_S8_UINT;
        case 154: return WINED3DFMT_X8D24_UNORM;
        case 155: return WINED3DFMT_S4X4_UINT_D24_UNORM;
        case 159: return WINED3DFMT_D16_UNORM;
        case 146: return WINED3DFMT_L16_UNORM;
        case 152: return WINED3DFMT_D32_FLOAT;
        case 157: return WINED3DFMT_S8_UINT_D24_FLOAT;
        case 148: return WINED3DFMT_R16_UINT;
        case 147: return WINED3DFMT_R32_UINT;
        case 142: return WINED3DFMT_R16G16B16A16_SNORM;
        case 140: return WINED3DFMT_R16_FLOAT;
        case 150: return WINED3DFMT_R16G16_FLOAT;
        case 175: return WINED3DFMT_R16G16B16A16_FLOAT;
        case 139: return WINED3DFMT_R32_FLOAT;
        case 149: return WINED3DFMT_R32G32_FLOAT;
        case 170: return WINED3DFMT_R32G32B32A32_FLOAT;
        case 161: return WINED3DFMT_R8G8_SNORM_Cx;
        default:
            FIXME("Unhandled D3DFORMAT %#x.\n", format);
            return WINED3DFMT_UNKNOWN;
    }
}
