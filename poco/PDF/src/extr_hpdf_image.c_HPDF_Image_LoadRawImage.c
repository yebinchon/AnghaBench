
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int size; } ;
struct TYPE_12__ {int obj_class; } ;
struct TYPE_14__ {int error; TYPE_5__* stream; TYPE_1__ header; } ;
struct TYPE_13__ {int error; } ;
typedef int HPDF_Xref ;
typedef int HPDF_UINT ;
typedef int HPDF_Stream ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_2__* HPDF_MMgr ;
typedef TYPE_3__* HPDF_Image ;
typedef TYPE_3__* HPDF_Dict ;
typedef scalar_t__ HPDF_ColorSpace ;


 char* COL_CMYK ;
 char* COL_GRAY ;
 char* COL_RGB ;
 scalar_t__ HPDF_CS_DEVICE_CMYK ;
 scalar_t__ HPDF_CS_DEVICE_GRAY ;
 scalar_t__ HPDF_CS_DEVICE_RGB ;
 TYPE_3__* HPDF_DictStream_New (TYPE_2__*,int ) ;
 scalar_t__ HPDF_Dict_AddName (TYPE_3__*,char*,char*) ;
 scalar_t__ HPDF_Dict_AddNumber (TYPE_3__*,char*,int) ;
 int HPDF_INVALID_COLOR_SPACE ;
 int HPDF_INVALID_IMAGE ;
 scalar_t__ HPDF_OK ;
 int HPDF_OSUBCLASS_XOBJECT ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;
 scalar_t__ HPDF_Stream_WriteToStream (int ,TYPE_5__*,int ,int *) ;

HPDF_Image
HPDF_Image_LoadRawImage (HPDF_MMgr mmgr,
                         HPDF_Stream raw_data,
                         HPDF_Xref xref,
                         HPDF_UINT width,
                         HPDF_UINT height,
                         HPDF_ColorSpace color_space)
{
    HPDF_Dict image;
    HPDF_STATUS ret = HPDF_OK;
    HPDF_UINT size;

    HPDF_PTRACE ((" HPDF_Image_LoadRawImage\n"));

    if (color_space != HPDF_CS_DEVICE_GRAY &&
            color_space != HPDF_CS_DEVICE_RGB &&
            color_space != HPDF_CS_DEVICE_CMYK) {
        HPDF_SetError (mmgr->error, HPDF_INVALID_COLOR_SPACE, 0);
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

    if (color_space == HPDF_CS_DEVICE_GRAY) {
        size = width * height;
        ret = HPDF_Dict_AddName (image, "ColorSpace", COL_GRAY);
 } else if (color_space == HPDF_CS_DEVICE_CMYK) {
  size = width * height * 4;
  ret = HPDF_Dict_AddName (image, "ColorSpace", COL_CMYK);
    } else {
        size = width * height * 3;
        ret = HPDF_Dict_AddName (image, "ColorSpace", COL_RGB);
    }

    if (ret != HPDF_OK)
        return ((void*)0);

    if (HPDF_Dict_AddNumber (image, "Width", width) != HPDF_OK)
        return ((void*)0);

    if (HPDF_Dict_AddNumber (image, "Height", height) != HPDF_OK)
        return ((void*)0);

    if (HPDF_Dict_AddNumber (image, "BitsPerComponent", 8) != HPDF_OK)
        return ((void*)0);

    if (HPDF_Stream_WriteToStream (raw_data, image->stream, 0, ((void*)0)) != HPDF_OK)
        return ((void*)0);

    if (image->stream->size != size) {
        HPDF_SetError (image->error, HPDF_INVALID_IMAGE, 0);
        return ((void*)0);
    }

    return image;
}
