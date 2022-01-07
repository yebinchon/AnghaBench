
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int obj_class; } ;
struct TYPE_9__ {int stream; TYPE_1__ header; } ;
typedef int HPDF_Xref ;
typedef int HPDF_UINT ;
typedef scalar_t__ HPDF_STATUS ;
typedef int HPDF_MMgr ;
typedef TYPE_2__* HPDF_Image ;
typedef TYPE_2__* HPDF_Dict ;
typedef int HPDF_BYTE ;
typedef int HPDF_BOOL ;


 TYPE_2__* HPDF_DictStream_New (int ,int ) ;
 scalar_t__ HPDF_Dict_AddName (TYPE_2__*,char*,char*) ;
 scalar_t__ HPDF_Dict_AddNumber (TYPE_2__*,char*,int) ;
 scalar_t__ HPDF_OK ;
 int HPDF_OSUBCLASS_XOBJECT ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_Stream_CcittToStream (int const*,int ,int *,int,int,int,int ) ;

HPDF_Image
HPDF_Image_Load1BitImageFromMem (HPDF_MMgr mmgr,
                          const HPDF_BYTE *buf,
                          HPDF_Xref xref,
                          HPDF_UINT width,
                          HPDF_UINT height,
        HPDF_UINT line_width,
        HPDF_BOOL top_is_first
                          )
{
    HPDF_Dict image;
    HPDF_STATUS ret = HPDF_OK;


    HPDF_PTRACE ((" HPDF_Image_Load1BitImage\n"));

    image = HPDF_DictStream_New (mmgr, xref);
    if (!image)
        return ((void*)0);

    image->header.obj_class |= HPDF_OSUBCLASS_XOBJECT;
    ret += HPDF_Dict_AddName (image, "Type", "XObject");
    ret += HPDF_Dict_AddName (image, "Subtype", "Image");
    if (ret != HPDF_OK)
        return ((void*)0);


    ret = HPDF_Dict_AddName (image, "ColorSpace", "DeviceGray");
    if (ret != HPDF_OK)
        return ((void*)0);

    if (HPDF_Dict_AddNumber (image, "Width", width) != HPDF_OK)
        return ((void*)0);

    if (HPDF_Dict_AddNumber (image, "Height", height) != HPDF_OK)
        return ((void*)0);

    if (HPDF_Dict_AddNumber (image, "BitsPerComponent", 1) != HPDF_OK)
        return ((void*)0);

    if (HPDF_Stream_CcittToStream (buf, image->stream, ((void*)0), width, height, line_width, top_is_first) != HPDF_OK)
        return ((void*)0);

    return image;
}
