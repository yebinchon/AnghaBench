#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  enum wined3d_format_id { ____Placeholder_wined3d_format_id } wined3d_format_id ;
typedef  int D3DFORMAT ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int D3DFMT_A1R5G5B5 ; 
 int D3DFMT_A2B10G10R10 ; 
 int D3DFMT_A2W10V10U10 ; 
 int D3DFMT_A4L4 ; 
 int D3DFMT_A4R4G4B4 ; 
 int D3DFMT_A8 ; 
 int D3DFMT_A8L8 ; 
 int D3DFMT_A8P8 ; 
 int D3DFMT_A8R3G3B2 ; 
 int D3DFMT_A8R8G8B8 ; 
 int D3DFMT_D15S1 ; 
 int D3DFMT_D16 ; 
 int D3DFMT_D16_LOCKABLE ; 
 int D3DFMT_D24S8 ; 
 int D3DFMT_D24X4S4 ; 
 int D3DFMT_D24X8 ; 
 int D3DFMT_D32 ; 
 int D3DFMT_G16R16 ; 
 int D3DFMT_INDEX16 ; 
 int D3DFMT_INDEX32 ; 
 int D3DFMT_L6V5U5 ; 
 int D3DFMT_L8 ; 
 int D3DFMT_P8 ; 
 int D3DFMT_Q8W8V8U8 ; 
 int D3DFMT_R3G3B2 ; 
 int D3DFMT_R5G6B5 ; 
 int D3DFMT_R8G8B8 ; 
 int D3DFMT_UNKNOWN ; 
 int D3DFMT_V16U16 ; 
 int D3DFMT_V8U8 ; 
 int D3DFMT_W11V11U10 ; 
 int D3DFMT_X1R5G5B5 ; 
 int D3DFMT_X4R4G4B4 ; 
 int D3DFMT_X8L8V8U8 ; 
 int D3DFMT_X8R8G8B8 ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  WINED3DFMT_A8_UNORM 162 
#define  WINED3DFMT_B2G3R3A8_UNORM 161 
#define  WINED3DFMT_B2G3R3_UNORM 160 
#define  WINED3DFMT_B4G4R4A4_UNORM 159 
#define  WINED3DFMT_B4G4R4X4_UNORM 158 
#define  WINED3DFMT_B5G5R5A1_UNORM 157 
#define  WINED3DFMT_B5G5R5X1_UNORM 156 
#define  WINED3DFMT_B5G6R5_UNORM 155 
#define  WINED3DFMT_B8G8R8A8_UNORM 154 
#define  WINED3DFMT_B8G8R8X8_UNORM 153 
#define  WINED3DFMT_B8G8R8_UNORM 152 
#define  WINED3DFMT_D16_LOCKABLE 151 
#define  WINED3DFMT_D16_UNORM 150 
#define  WINED3DFMT_D24_UNORM_S8_UINT 149 
#define  WINED3DFMT_D32_UNORM 148 
#define  WINED3DFMT_L4A4_UNORM 147 
#define  WINED3DFMT_L8A8_UNORM 146 
#define  WINED3DFMT_L8_UNORM 145 
#define  WINED3DFMT_P8_UINT 144 
#define  WINED3DFMT_P8_UINT_A8_UNORM 143 
#define  WINED3DFMT_R10G10B10A2_UNORM 142 
#define  WINED3DFMT_R10G10B10_SNORM_A2_UNORM 141 
#define  WINED3DFMT_R10G11B11_SNORM 140 
#define  WINED3DFMT_R16G16_SNORM 139 
#define  WINED3DFMT_R16G16_UNORM 138 
#define  WINED3DFMT_R16_UINT 137 
#define  WINED3DFMT_R32_UINT 136 
#define  WINED3DFMT_R5G5_SNORM_L6_UNORM 135 
#define  WINED3DFMT_R8G8B8A8_SNORM 134 
#define  WINED3DFMT_R8G8_SNORM 133 
#define  WINED3DFMT_R8G8_SNORM_L8X8_UNORM 132 
#define  WINED3DFMT_S1_UINT_D15_UNORM 131 
#define  WINED3DFMT_S4X4_UINT_D24_UNORM 130 
#define  WINED3DFMT_UNKNOWN 129 
#define  WINED3DFMT_X8D24_UNORM 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

D3DFORMAT FUNC2(enum wined3d_format_id format)
{
    BYTE *c = (BYTE *)&format;

    /* Don't translate FOURCC formats */
    if (FUNC1(c[0]) && FUNC1(c[1]) && FUNC1(c[2]) && FUNC1(c[3])) return format;

    switch(format)
    {
        case WINED3DFMT_UNKNOWN: return D3DFMT_UNKNOWN;
        case WINED3DFMT_B8G8R8_UNORM: return D3DFMT_R8G8B8;
        case WINED3DFMT_B8G8R8A8_UNORM: return D3DFMT_A8R8G8B8;
        case WINED3DFMT_B8G8R8X8_UNORM: return D3DFMT_X8R8G8B8;
        case WINED3DFMT_B5G6R5_UNORM: return D3DFMT_R5G6B5;
        case WINED3DFMT_B5G5R5X1_UNORM: return D3DFMT_X1R5G5B5;
        case WINED3DFMT_B5G5R5A1_UNORM: return D3DFMT_A1R5G5B5;
        case WINED3DFMT_B4G4R4A4_UNORM: return D3DFMT_A4R4G4B4;
        case WINED3DFMT_B2G3R3_UNORM: return D3DFMT_R3G3B2;
        case WINED3DFMT_A8_UNORM: return D3DFMT_A8;
        case WINED3DFMT_B2G3R3A8_UNORM: return D3DFMT_A8R3G3B2;
        case WINED3DFMT_B4G4R4X4_UNORM: return D3DFMT_X4R4G4B4;
        case WINED3DFMT_R10G10B10A2_UNORM: return D3DFMT_A2B10G10R10;
        case WINED3DFMT_R16G16_UNORM: return D3DFMT_G16R16;
        case WINED3DFMT_P8_UINT_A8_UNORM: return D3DFMT_A8P8;
        case WINED3DFMT_P8_UINT: return D3DFMT_P8;
        case WINED3DFMT_L8_UNORM: return D3DFMT_L8;
        case WINED3DFMT_L8A8_UNORM: return D3DFMT_A8L8;
        case WINED3DFMT_L4A4_UNORM: return D3DFMT_A4L4;
        case WINED3DFMT_R8G8_SNORM: return D3DFMT_V8U8;
        case WINED3DFMT_R5G5_SNORM_L6_UNORM: return D3DFMT_L6V5U5;
        case WINED3DFMT_R8G8_SNORM_L8X8_UNORM: return D3DFMT_X8L8V8U8;
        case WINED3DFMT_R8G8B8A8_SNORM: return D3DFMT_Q8W8V8U8;
        case WINED3DFMT_R16G16_SNORM: return D3DFMT_V16U16;
        case WINED3DFMT_R10G11B11_SNORM: return D3DFMT_W11V11U10;
        case WINED3DFMT_R10G10B10_SNORM_A2_UNORM: return D3DFMT_A2W10V10U10;
        case WINED3DFMT_D16_LOCKABLE: return D3DFMT_D16_LOCKABLE;
        case WINED3DFMT_D32_UNORM: return D3DFMT_D32;
        case WINED3DFMT_S1_UINT_D15_UNORM: return D3DFMT_D15S1;
        case WINED3DFMT_D24_UNORM_S8_UINT: return D3DFMT_D24S8;
        case WINED3DFMT_X8D24_UNORM: return D3DFMT_D24X8;
        case WINED3DFMT_S4X4_UINT_D24_UNORM: return D3DFMT_D24X4S4;
        case WINED3DFMT_D16_UNORM: return D3DFMT_D16;
        case WINED3DFMT_R16_UINT: return D3DFMT_INDEX16;
        case WINED3DFMT_R32_UINT: return D3DFMT_INDEX32;
        default:
            FUNC0("Unhandled wined3d format %#x.\n", format);
            return D3DFMT_UNKNOWN;
    }
}