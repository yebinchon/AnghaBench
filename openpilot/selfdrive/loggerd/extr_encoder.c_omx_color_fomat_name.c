
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
__attribute__((used)) static const char* omx_color_fomat_name(uint32_t format) {
  switch (format) {
  case 152: return "OMX_COLOR_FormatUnused";
  case 156: return "OMX_COLOR_FormatMonochrome";
  case 166: return "OMX_COLOR_Format8bitRGB332";
  case 183: return "OMX_COLOR_Format12bitRGB444";
  case 181: return "OMX_COLOR_Format16bitARGB4444";
  case 182: return "OMX_COLOR_Format16bitARGB1555";
  case 179: return "OMX_COLOR_Format16bitRGB565";
  case 180: return "OMX_COLOR_Format16bitBGR565";
  case 176: return "OMX_COLOR_Format18bitRGB666";
  case 177: return "OMX_COLOR_Format18bitARGB1665";
  case 175: return "OMX_COLOR_Format19bitARGB1666";
  case 170: return "OMX_COLOR_Format24bitRGB888";
  case 171: return "OMX_COLOR_Format24bitBGR888";
  case 172: return "OMX_COLOR_Format24bitARGB1887";
  case 169: return "OMX_COLOR_Format25bitARGB1888";
  case 167: return "OMX_COLOR_Format32bitBGRA8888";
  case 168: return "OMX_COLOR_Format32bitARGB8888";
  case 148: return "OMX_COLOR_FormatYUV411Planar";
  case 149: return "OMX_COLOR_FormatYUV411PackedPlanar";
  case 145: return "OMX_COLOR_FormatYUV420Planar";
  case 147: return "OMX_COLOR_FormatYUV420PackedPlanar";
  case 144: return "OMX_COLOR_FormatYUV420SemiPlanar";
  case 141: return "OMX_COLOR_FormatYUV422Planar";
  case 143: return "OMX_COLOR_FormatYUV422PackedPlanar";
  case 140: return "OMX_COLOR_FormatYUV422SemiPlanar";
  case 151: return "OMX_COLOR_FormatYCbYCr";
  case 150: return "OMX_COLOR_FormatYCrYCb";
  case 164: return "OMX_COLOR_FormatCbYCrY";
  case 163: return "OMX_COLOR_FormatCrYCbY";
  case 139: return "OMX_COLOR_FormatYUV444Interleaved";
  case 154: return "OMX_COLOR_FormatRawBayer8bit";
  case 155: return "OMX_COLOR_FormatRawBayer10bit";
  case 153: return "OMX_COLOR_FormatRawBayer8bitcompressed";
  case 161: return "OMX_COLOR_FormatL2";
  case 158: return "OMX_COLOR_FormatL4";
  case 157: return "OMX_COLOR_FormatL8";
  case 162: return "OMX_COLOR_FormatL16";
  case 160: return "OMX_COLOR_FormatL24";
  case 159: return "OMX_COLOR_FormatL32";
  case 146: return "OMX_COLOR_FormatYUV420PackedSemiPlanar";
  case 142: return "OMX_COLOR_FormatYUV422PackedSemiPlanar";
  case 178: return "OMX_COLOR_Format18BitBGR666";
  case 173: return "OMX_COLOR_Format24BitARGB6666";
  case 174: return "OMX_COLOR_Format24BitABGR6666";

  case 165: return "OMX_COLOR_FormatAndroidOpaque";
  case 134: return "OMX_TI_COLOR_FormatYUV420PackedSemiPlanar";
  case 136: return "OMX_QCOM_COLOR_FormatYVU420SemiPlanar";
  case 137: return "OMX_QCOM_COLOR_FormatYUV420PackedSemiPlanar64x32Tile2m8ka";
  case 135: return "OMX_SEC_COLOR_FormatNV12Tiled";
  case 138: return "OMX_QCOM_COLOR_FormatYUV420PackedSemiPlanar32m";


  case 128: return "QOMX_COLOR_FormatYVU420PackedSemiPlanar32m4ka";
  case 129: return "QOMX_COLOR_FormatYUV420PackedSemiPlanar16m2ka";


  case 132: return "QOMX_COLOR_FORMATYUV420PackedSemiPlanar32mMultiView";
  case 133: return "QOMX_COLOR_FORMATYUV420PackedSemiPlanar32mCompressed";
  case 131: return "QOMX_COLOR_Format32bitRGBA8888";
  case 130: return "QOMX_COLOR_Format32bitRGBA8888Compressed";

  default:
    return "unkn";
  }
}
