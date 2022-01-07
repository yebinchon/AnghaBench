
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int obj_class; } ;
struct TYPE_13__ {int stream; TYPE_1__ header; } ;
struct TYPE_12__ {int error; } ;
typedef int HPDF_Xref ;
typedef int HPDF_UINT ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_2__* HPDF_MMgr ;
typedef TYPE_3__* HPDF_Image ;
typedef TYPE_3__* HPDF_Dict ;
typedef int HPDF_DOUBLE ;
typedef int HPDF_ColorSpace ;
typedef int HPDF_BYTE ;


 char* COL_CMYK ;
 char* COL_GRAY ;
 char* COL_RGB ;



 TYPE_3__* HPDF_DictStream_New (TYPE_2__*,int ) ;
 scalar_t__ HPDF_Dict_AddName (TYPE_3__*,char*,char*) ;
 scalar_t__ HPDF_Dict_AddNumber (TYPE_3__*,char*,int) ;
 int HPDF_INVALID_COLOR_SPACE ;
 int HPDF_INVALID_IMAGE ;
 scalar_t__ HPDF_OK ;
 int HPDF_OSUBCLASS_XOBJECT ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;
 scalar_t__ HPDF_Stream_Write (int ,int const*,int) ;

HPDF_Image
HPDF_Image_LoadRawImageFromMem (HPDF_MMgr mmgr,
                                 const HPDF_BYTE *buf,
                                 HPDF_Xref xref,
                                 HPDF_UINT width,
                                 HPDF_UINT height,
                                 HPDF_ColorSpace color_space,
                                 HPDF_UINT bits_per_component)
{
    HPDF_Dict image;
    HPDF_STATUS ret = HPDF_OK;
    HPDF_UINT size=0;

    HPDF_PTRACE ((" HPDF_Image_LoadRawImageFromMem\n"));

    if (color_space != 129 &&
            color_space != 128 &&
            color_space != 130) {
        HPDF_SetError (mmgr->error, HPDF_INVALID_COLOR_SPACE, 0);
        return ((void*)0);
    }

    if (bits_per_component != 1 && bits_per_component != 2 &&
            bits_per_component != 4 && bits_per_component != 8) {
        HPDF_SetError (mmgr->error, HPDF_INVALID_IMAGE, 0);
        return ((void*)0);
    }

    image = HPDF_DictStream_New (mmgr, xref);
    if (!image)
        return ((void*)0);

    image->header.obj_class |= HPDF_OSUBCLASS_XOBJECT;
    ret += HPDF_Dict_AddName (image, "Type", "XObject");
    ret += HPDF_Dict_AddName (image, "Subtype", "Image");
    if (ret != HPDF_OK)
        return ((void*)0);

    switch (color_space) {
        case 129:
            size = (HPDF_UINT)((HPDF_DOUBLE)width * height / (8 / bits_per_component) + 0.876);
            ret = HPDF_Dict_AddName (image, "ColorSpace", COL_GRAY);
            break;
        case 128:
            size = (HPDF_UINT)((HPDF_DOUBLE)width * height / (8 / bits_per_component) + 0.876);
            size *= 3;
            ret = HPDF_Dict_AddName (image, "ColorSpace", COL_RGB);
            break;
        case 130:
            size = (HPDF_UINT)((HPDF_DOUBLE)width * height / (8 / bits_per_component) + 0.876);
            size *= 4;
            ret = HPDF_Dict_AddName (image, "ColorSpace", COL_CMYK);
            break;
        default:;
    }

    if (ret != HPDF_OK)
        return ((void*)0);

    if (HPDF_Dict_AddNumber (image, "Width", width) != HPDF_OK)
        return ((void*)0);

    if (HPDF_Dict_AddNumber (image, "Height", height) != HPDF_OK)
        return ((void*)0);

    if (HPDF_Dict_AddNumber (image, "BitsPerComponent", bits_per_component)
            != HPDF_OK)
        return ((void*)0);

    if (HPDF_Stream_Write (image->stream, buf, size) != HPDF_OK)
        return ((void*)0);

    return image;
}
