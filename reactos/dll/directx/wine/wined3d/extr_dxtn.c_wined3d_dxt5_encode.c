
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_format_id { ____Placeholder_wined3d_format_id } wined3d_format_id ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int FIXME (char*,int ) ;
 int GL_COMPRESSED_RGBA_S3TC_DXT5_EXT ;
 int TRUE ;


 int debug_d3dformat (int) ;
 int txc_dxtn_handle ;
 int x8r8g8b8_to_dxtn (int const*,int *,int ,int ,unsigned int,unsigned int,int ,int ) ;

BOOL wined3d_dxt5_encode(const BYTE *src, BYTE *dst, DWORD pitch_in, DWORD pitch_out,
        enum wined3d_format_id format, unsigned int w, unsigned int h)
{
    if (!txc_dxtn_handle)
        return FALSE;

    switch (format)
    {
        case 129:
            return x8r8g8b8_to_dxtn(src, dst, pitch_in, pitch_out, w, h,
                                    GL_COMPRESSED_RGBA_S3TC_DXT5_EXT, TRUE);
        case 128:
            return x8r8g8b8_to_dxtn(src, dst, pitch_in, pitch_out, w, h,
                                    GL_COMPRESSED_RGBA_S3TC_DXT5_EXT, FALSE);
        default:
            break;
    }

    FIXME("Cannot find a conversion function from format %s to DXT5.\n", debug_d3dformat(format));
    return FALSE;
}
