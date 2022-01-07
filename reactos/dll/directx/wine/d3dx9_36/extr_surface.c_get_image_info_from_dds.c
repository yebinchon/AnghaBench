
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int size; } ;
struct dds_header {int miplevels; int caps2; int depth; TYPE_3__ pixel_format; int height; int width; } ;
typedef int UINT ;
struct TYPE_4__ {int Depth; int MipLevels; int ImageFileFormat; int Height; int Width; int Format; int ResourceType; } ;
typedef int HRESULT ;
typedef int DWORD ;
typedef TYPE_1__ D3DXIMAGE_INFO ;


 int D3DFMT_UNKNOWN ;
 int D3DRTYPE_CUBETEXTURE ;
 int D3DRTYPE_TEXTURE ;
 int D3DRTYPE_VOLUMETEXTURE ;
 int D3DXERR_INVALIDDATA ;
 int D3DXIFF_DDS ;
 int D3D_OK ;
 int DDS_CAPS2_CUBEMAP ;
 int DDS_CAPS2_CUBEMAP_NEGATIVEZ ;
 int DDS_CAPS2_CUBEMAP_POSITIVEX ;
 int DDS_CAPS2_VOLUME ;
 int TRACE (char*,int ) ;
 int WARN (char*,int,int) ;
 int calculate_dds_file_size (int ,int ,int ,int,int,int) ;
 int dds_pixel_format_to_d3dformat (TYPE_3__*) ;

__attribute__((used)) static HRESULT get_image_info_from_dds(const void *buffer, UINT length, D3DXIMAGE_INFO *info)
{
    UINT faces = 1;
    UINT expected_length;
    const struct dds_header *header = buffer;

    if (length < sizeof(*header) || !info)
        return D3DXERR_INVALIDDATA;

    if (header->pixel_format.size != sizeof(header->pixel_format))
        return D3DXERR_INVALIDDATA;

    info->Width = header->width;
    info->Height = header->height;
    info->Depth = 1;
    info->MipLevels = header->miplevels ? header->miplevels : 1;

    info->Format = dds_pixel_format_to_d3dformat(&header->pixel_format);
    if (info->Format == D3DFMT_UNKNOWN)
        return D3DXERR_INVALIDDATA;

    TRACE("Pixel format is %#x\n", info->Format);

    if (header->caps2 & DDS_CAPS2_VOLUME)
    {
        info->Depth = header->depth;
        info->ResourceType = D3DRTYPE_VOLUMETEXTURE;
    }
    else if (header->caps2 & DDS_CAPS2_CUBEMAP)
    {
        DWORD face;
        faces = 0;
        for (face = DDS_CAPS2_CUBEMAP_POSITIVEX; face <= DDS_CAPS2_CUBEMAP_NEGATIVEZ; face <<= 1)
        {
            if (header->caps2 & face)
                faces++;
        }
        info->ResourceType = D3DRTYPE_CUBETEXTURE;
    }
    else
    {
        info->ResourceType = D3DRTYPE_TEXTURE;
    }

    expected_length = calculate_dds_file_size(info->Format, info->Width, info->Height, info->Depth,
        info->MipLevels, faces);
    if (length < expected_length)
    {
        WARN("File is too short %u, expected at least %u bytes\n", length, expected_length);
        return D3DXERR_INVALIDDATA;
    }

    info->ImageFileFormat = D3DXIFF_DDS;
    return D3D_OK;
}
