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
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
#define  WINED3DFMT_B4G4R4A4_UNORM 133 
#define  WINED3DFMT_B4G4R4X4_UNORM 132 
#define  WINED3DFMT_B5G5R5A1_UNORM 131 
#define  WINED3DFMT_B5G5R5X1_UNORM 130 
#define  WINED3DFMT_B8G8R8A8_UNORM 129 
#define  WINED3DFMT_B8G8R8X8_UNORM 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  txc_dxtn_handle ; 

BOOL FUNC5(const BYTE *src, BYTE *dst, DWORD pitch_in, DWORD pitch_out,
        enum wined3d_format_id format, unsigned int w, unsigned int h)
{
    if (!txc_dxtn_handle)
        return FALSE;

    switch (format)
    {
        case WINED3DFMT_B8G8R8A8_UNORM:
            return FUNC4(src, dst, pitch_in, pitch_out, w, h, TRUE);
        case WINED3DFMT_B8G8R8X8_UNORM:
            return FUNC4(src, dst, pitch_in, pitch_out, w, h, FALSE);
        case WINED3DFMT_B4G4R4A4_UNORM:
            return FUNC3(src, dst, pitch_in, pitch_out, w, h, TRUE);
        case WINED3DFMT_B4G4R4X4_UNORM:
            return FUNC3(src, dst, pitch_in, pitch_out, w, h, FALSE);
        case WINED3DFMT_B5G5R5A1_UNORM:
            return FUNC2(src, dst, pitch_in, pitch_out, w, h, TRUE);
        case WINED3DFMT_B5G5R5X1_UNORM:
            return FUNC2(src, dst, pitch_in, pitch_out, w, h, FALSE);
        default:
            break;
    }

    FUNC0("Cannot find a conversion function from format DXT1 to %s.\n", FUNC1(format));
    return FALSE;
}