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
 int /*<<< orphan*/  GL_COMPRESSED_RGBA_S3TC_DXT5_EXT ; 
 int /*<<< orphan*/  TRUE ; 
#define  WINED3DFMT_B8G8R8A8_UNORM 129 
#define  WINED3DFMT_B8G8R8X8_UNORM 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  txc_dxtn_handle ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOL FUNC3(const BYTE *src, BYTE *dst, DWORD pitch_in, DWORD pitch_out,
        enum wined3d_format_id format, unsigned int w, unsigned int h)
{
    if (!txc_dxtn_handle)
        return FALSE;

    switch (format)
    {
        case WINED3DFMT_B8G8R8A8_UNORM:
            return FUNC2(src, dst, pitch_in, pitch_out, w, h,
                                    GL_COMPRESSED_RGBA_S3TC_DXT5_EXT, TRUE);
        case WINED3DFMT_B8G8R8X8_UNORM:
            return FUNC2(src, dst, pitch_in, pitch_out, w, h,
                                    GL_COMPRESSED_RGBA_S3TC_DXT5_EXT, FALSE);
        default:
            break;
    }

    FUNC0("Cannot find a conversion function from format %s to DXT5.\n", FUNC1(format));
    return FALSE;
}