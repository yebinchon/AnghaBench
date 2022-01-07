
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_format_id { ____Placeholder_wined3d_format_id } wined3d_format_id ;
typedef int D3DFORMAT ;
typedef int BYTE ;


 int D3DFMT_A16B16G16R16 ;
 int D3DFMT_A16B16G16R16F ;
 int D3DFMT_A1R5G5B5 ;
 int D3DFMT_A2B10G10R10 ;
 int D3DFMT_A2R10G10B10 ;
 int D3DFMT_A2W10V10U10 ;
 int D3DFMT_A32B32G32R32F ;
 int D3DFMT_A4L4 ;
 int D3DFMT_A4R4G4B4 ;
 int D3DFMT_A8 ;
 int D3DFMT_A8B8G8R8 ;
 int D3DFMT_A8L8 ;
 int D3DFMT_A8P8 ;
 int D3DFMT_A8R3G3B2 ;
 int D3DFMT_A8R8G8B8 ;
 int D3DFMT_CxV8U8 ;
 int D3DFMT_D15S1 ;
 int D3DFMT_D16 ;
 int D3DFMT_D16_LOCKABLE ;
 int D3DFMT_D24FS8 ;
 int D3DFMT_D24S8 ;
 int D3DFMT_D24X4S4 ;
 int D3DFMT_D24X8 ;
 int D3DFMT_D32 ;
 int D3DFMT_D32F_LOCKABLE ;
 int D3DFMT_G16R16 ;
 int D3DFMT_G16R16F ;
 int D3DFMT_G32R32F ;
 int D3DFMT_INDEX16 ;
 int D3DFMT_INDEX32 ;
 int D3DFMT_L16 ;
 int D3DFMT_L6V5U5 ;
 int D3DFMT_L8 ;
 int D3DFMT_P8 ;
 int D3DFMT_Q16W16V16U16 ;
 int D3DFMT_Q8W8V8U8 ;
 int D3DFMT_R16F ;
 int D3DFMT_R32F ;
 int D3DFMT_R3G3B2 ;
 int D3DFMT_R5G6B5 ;
 int D3DFMT_R8G8B8 ;
 int D3DFMT_UNKNOWN ;
 int D3DFMT_V16U16 ;
 int D3DFMT_V8U8 ;
 int D3DFMT_X1R5G5B5 ;
 int D3DFMT_X4R4G4B4 ;
 int D3DFMT_X8B8G8R8 ;
 int D3DFMT_X8L8V8U8 ;
 int D3DFMT_X8R8G8B8 ;
 int FIXME (char*,int) ;
 scalar_t__ isprint (int ) ;

D3DFORMAT d3dformat_from_wined3dformat(enum wined3d_format_id format)
{
    BYTE *c = (BYTE *)&format;


    if (isprint(c[0]) && isprint(c[1]) && isprint(c[2]) && isprint(c[3])) return format;

    switch(format)
    {
        case 129: return D3DFMT_UNKNOWN;
        case 165: return D3DFMT_R8G8B8;
        case 167: return D3DFMT_A8R8G8B8;
        case 166: return D3DFMT_X8R8G8B8;
        case 168: return D3DFMT_R5G6B5;
        case 169: return D3DFMT_X1R5G5B5;
        case 170: return D3DFMT_A1R5G5B5;
        case 172: return D3DFMT_A4R4G4B4;
        case 173: return D3DFMT_R3G3B2;
        case 176: return D3DFMT_A8;
        case 174: return D3DFMT_A8R3G3B2;
        case 171: return D3DFMT_X4R4G4B4;
        case 153: return D3DFMT_A2B10G10R10;
        case 137: return D3DFMT_A8B8G8R8;
        case 136: return D3DFMT_X8B8G8R8;
        case 146: return D3DFMT_G16R16;
        case 175: return D3DFMT_A2R10G10B10;
        case 149: return D3DFMT_A16B16G16R16;
        case 154: return D3DFMT_A8P8;
        case 155: return D3DFMT_P8;
        case 156: return D3DFMT_L8;
        case 157: return D3DFMT_A8L8;
        case 158: return D3DFMT_A4L4;
        case 135: return D3DFMT_V8U8;
        case 139: return D3DFMT_L6V5U5;
        case 133: return D3DFMT_X8L8V8U8;
        case 138: return D3DFMT_Q8W8V8U8;
        case 147: return D3DFMT_V16U16;
        case 152: return D3DFMT_A2W10V10U10;
        case 164: return D3DFMT_D16_LOCKABLE;
        case 160: return D3DFMT_D32;
        case 132: return D3DFMT_D15S1;
        case 162: return D3DFMT_D24S8;
        case 128: return D3DFMT_D24X8;
        case 131: return D3DFMT_D24X4S4;
        case 163: return D3DFMT_D16;
        case 159: return D3DFMT_L16;
        case 161: return D3DFMT_D32F_LOCKABLE;
        case 130: return D3DFMT_D24FS8;
        case 144: return D3DFMT_INDEX16;
        case 140: return D3DFMT_INDEX32;
        case 150: return D3DFMT_Q16W16V16U16;
        case 145: return D3DFMT_R16F;
        case 148: return D3DFMT_G16R16F;
        case 151: return D3DFMT_A16B16G16R16F;
        case 141: return D3DFMT_R32F;
        case 142: return D3DFMT_G32R32F;
        case 143: return D3DFMT_A32B32G32R32F;
        case 134: return D3DFMT_CxV8U8;
        default:
            FIXME("Unhandled wined3d format %#x.\n", format);
            return D3DFMT_UNKNOWN;
    }
}
