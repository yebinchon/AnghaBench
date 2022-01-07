
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int png_size_t ;
typedef int png_byte ;
struct TYPE_11__ {int obj_class; } ;
struct TYPE_13__ {TYPE_1__ header; } ;
struct TYPE_12__ {int error; } ;
typedef int HPDF_Xref ;
typedef int HPDF_UINT ;
typedef int HPDF_Stream ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_2__* HPDF_MMgr ;
typedef TYPE_3__* HPDF_Image ;
typedef TYPE_3__* HPDF_Dict ;
typedef int HPDF_BOOL ;


 TYPE_3__* HPDF_DictStream_New (TYPE_2__*,int ) ;
 scalar_t__ HPDF_Dict_AddName (TYPE_3__*,char*,char*) ;
 int HPDF_INVALID_PNG_IMAGE ;
 int HPDF_MemSet (int *,int,int) ;
 scalar_t__ HPDF_OK ;
 int HPDF_OSUBCLASS_XOBJECT ;
 int HPDF_PNG_BYTES_TO_CHECK ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;
 scalar_t__ HPDF_Stream_Read (int ,int *,int*) ;
 scalar_t__ LoadPngData (TYPE_3__*,int ,int ,int ) ;
 scalar_t__ png_sig_cmp (int *,int ,int) ;

HPDF_Image
HPDF_Image_LoadPngImage (HPDF_MMgr mmgr,
                          HPDF_Stream png_data,
                          HPDF_Xref xref,
                          HPDF_BOOL delayed_loading)
{
    HPDF_STATUS ret;
    HPDF_Dict image;
    png_byte header[HPDF_PNG_BYTES_TO_CHECK];
    HPDF_UINT len = HPDF_PNG_BYTES_TO_CHECK;

    HPDF_PTRACE ((" HPDF_Image_LoadPngImage\n"));

    HPDF_MemSet (header, 0x00, HPDF_PNG_BYTES_TO_CHECK);
    ret = HPDF_Stream_Read (png_data, header, &len);
    if (ret != HPDF_OK ||
            png_sig_cmp (header, (png_size_t)0, HPDF_PNG_BYTES_TO_CHECK)) {
        HPDF_SetError (mmgr->error, HPDF_INVALID_PNG_IMAGE, 0);
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

    if (LoadPngData (image, xref, png_data, delayed_loading) != HPDF_OK)
        return ((void*)0);

    return image;
}
