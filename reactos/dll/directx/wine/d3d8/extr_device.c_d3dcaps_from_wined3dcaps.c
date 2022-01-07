
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int PixelShader1xMaxValue; void* PixelShaderVersion; int MaxVertexShaderConst; void* VertexShaderVersion; int MaxStreamStride; int MaxStreams; int MaxVertexIndex; int MaxPrimitiveCount; int MaxPointSize; int MaxVertexBlendMatrixIndex; int MaxVertexBlendMatrices; int MaxUserClipPlanes; int MaxActiveLights; int VertexProcessingCaps; int MaxSimultaneousTextures; int MaxTextureBlendStages; int TextureOpCaps; int FVFCaps; int StencilCaps; int ExtentsAdjust; int GuardBandBottom; int GuardBandRight; int GuardBandTop; int GuardBandLeft; int MaxVertexW; int MaxAnisotropy; int MaxTextureAspectRatio; int MaxTextureRepeat; int MaxVolumeExtent; int MaxTextureHeight; int MaxTextureWidth; int LineCaps; int VolumeTextureAddressCaps; int TextureAddressCaps; int VolumeTextureFilterCaps; int CubeTextureFilterCaps; int TextureFilterCaps; int TextureCaps; int ShadeCaps; int AlphaCmpCaps; int DestBlendCaps; int SrcBlendCaps; int ZCmpCaps; int RasterCaps; int PrimitiveMiscCaps; int DevCaps; int CursorCaps; int PresentationIntervals; int Caps3; int Caps2; int Caps; int AdapterOrdinal; scalar_t__ DeviceType; } ;
typedef TYPE_1__ WINED3DCAPS ;
struct TYPE_6__ {int StencilCaps; int MaxVertexShaderConst; void* VertexShaderVersion; void* PixelShaderVersion; int MaxPixelShaderValue; int MaxStreamStride; int MaxStreams; int MaxVertexIndex; int MaxPrimitiveCount; int MaxPointSize; int MaxVertexBlendMatrixIndex; int MaxVertexBlendMatrices; int MaxUserClipPlanes; int MaxActiveLights; int VertexProcessingCaps; int MaxSimultaneousTextures; int MaxTextureBlendStages; int TextureOpCaps; int FVFCaps; int ExtentsAdjust; int GuardBandBottom; int GuardBandRight; int GuardBandTop; int GuardBandLeft; int MaxVertexW; int MaxAnisotropy; int MaxTextureAspectRatio; int MaxTextureRepeat; int MaxVolumeExtent; int MaxTextureHeight; int MaxTextureWidth; int LineCaps; int VolumeTextureAddressCaps; int TextureAddressCaps; int VolumeTextureFilterCaps; int CubeTextureFilterCaps; int TextureFilterCaps; int TextureCaps; int ShadeCaps; int AlphaCmpCaps; int DestBlendCaps; int SrcBlendCaps; int ZCmpCaps; int RasterCaps; int PrimitiveMiscCaps; int DevCaps; int CursorCaps; int PresentationIntervals; int Caps3; int Caps2; int Caps; int AdapterOrdinal; scalar_t__ DeviceType; } ;
typedef scalar_t__ D3DDEVTYPE ;
typedef TYPE_2__ D3DCAPS8 ;


 int D3D8_MAX_VERTEX_SHADER_CONSTANTF ;
 void* D3DPS_VERSION (int,int) ;
 void* D3DVS_VERSION (int,int) ;
 int WINED3DSTENCILCAPS_TWOSIDED ;
 int min (int ,int ) ;

void d3dcaps_from_wined3dcaps(D3DCAPS8 *caps, const WINED3DCAPS *wined3d_caps)
{
    caps->DeviceType = (D3DDEVTYPE)wined3d_caps->DeviceType;
    caps->AdapterOrdinal = wined3d_caps->AdapterOrdinal;
    caps->Caps = wined3d_caps->Caps;
    caps->Caps2 = wined3d_caps->Caps2;
    caps->Caps3 = wined3d_caps->Caps3;
    caps->PresentationIntervals = wined3d_caps->PresentationIntervals;
    caps->CursorCaps = wined3d_caps->CursorCaps;
    caps->DevCaps = wined3d_caps->DevCaps;
    caps->PrimitiveMiscCaps = wined3d_caps->PrimitiveMiscCaps;
    caps->RasterCaps = wined3d_caps->RasterCaps;
    caps->ZCmpCaps = wined3d_caps->ZCmpCaps;
    caps->SrcBlendCaps = wined3d_caps->SrcBlendCaps;
    caps->DestBlendCaps = wined3d_caps->DestBlendCaps;
    caps->AlphaCmpCaps = wined3d_caps->AlphaCmpCaps;
    caps->ShadeCaps = wined3d_caps->ShadeCaps;
    caps->TextureCaps = wined3d_caps->TextureCaps;
    caps->TextureFilterCaps = wined3d_caps->TextureFilterCaps;
    caps->CubeTextureFilterCaps = wined3d_caps->CubeTextureFilterCaps;
    caps->VolumeTextureFilterCaps = wined3d_caps->VolumeTextureFilterCaps;
    caps->TextureAddressCaps = wined3d_caps->TextureAddressCaps;
    caps->VolumeTextureAddressCaps = wined3d_caps->VolumeTextureAddressCaps;
    caps->LineCaps = wined3d_caps->LineCaps;
    caps->MaxTextureWidth = wined3d_caps->MaxTextureWidth;
    caps->MaxTextureHeight = wined3d_caps->MaxTextureHeight;
    caps->MaxVolumeExtent = wined3d_caps->MaxVolumeExtent;
    caps->MaxTextureRepeat = wined3d_caps->MaxTextureRepeat;
    caps->MaxTextureAspectRatio = wined3d_caps->MaxTextureAspectRatio;
    caps->MaxAnisotropy = wined3d_caps->MaxAnisotropy;
    caps->MaxVertexW = wined3d_caps->MaxVertexW;
    caps->GuardBandLeft = wined3d_caps->GuardBandLeft;
    caps->GuardBandTop = wined3d_caps->GuardBandTop;
    caps->GuardBandRight = wined3d_caps->GuardBandRight;
    caps->GuardBandBottom = wined3d_caps->GuardBandBottom;
    caps->ExtentsAdjust = wined3d_caps->ExtentsAdjust;
    caps->StencilCaps = wined3d_caps->StencilCaps;
    caps->FVFCaps = wined3d_caps->FVFCaps;
    caps->TextureOpCaps = wined3d_caps->TextureOpCaps;
    caps->MaxTextureBlendStages = wined3d_caps->MaxTextureBlendStages;
    caps->MaxSimultaneousTextures = wined3d_caps->MaxSimultaneousTextures;
    caps->VertexProcessingCaps = wined3d_caps->VertexProcessingCaps;
    caps->MaxActiveLights = wined3d_caps->MaxActiveLights;
    caps->MaxUserClipPlanes = wined3d_caps->MaxUserClipPlanes;
    caps->MaxVertexBlendMatrices = wined3d_caps->MaxVertexBlendMatrices;
    caps->MaxVertexBlendMatrixIndex = wined3d_caps->MaxVertexBlendMatrixIndex;
    caps->MaxPointSize = wined3d_caps->MaxPointSize;
    caps->MaxPrimitiveCount = wined3d_caps->MaxPrimitiveCount;
    caps->MaxVertexIndex = wined3d_caps->MaxVertexIndex;
    caps->MaxStreams = wined3d_caps->MaxStreams;
    caps->MaxStreamStride = wined3d_caps->MaxStreamStride;
    caps->VertexShaderVersion = wined3d_caps->VertexShaderVersion;
    caps->MaxVertexShaderConst = wined3d_caps->MaxVertexShaderConst;
    caps->PixelShaderVersion = wined3d_caps->PixelShaderVersion;
    caps->MaxPixelShaderValue = wined3d_caps->PixelShader1xMaxValue;


    if (caps->PixelShaderVersion)
        caps->PixelShaderVersion = D3DPS_VERSION(1, 4);
    else
        caps->PixelShaderVersion = D3DPS_VERSION(0, 0);
    if (caps->VertexShaderVersion)
        caps->VertexShaderVersion = D3DVS_VERSION(1, 1);
    else
        caps->VertexShaderVersion = D3DVS_VERSION(0, 0);
    caps->MaxVertexShaderConst = min(D3D8_MAX_VERTEX_SHADER_CONSTANTF, caps->MaxVertexShaderConst);

    caps->StencilCaps &= ~WINED3DSTENCILCAPS_TWOSIDED;
}
