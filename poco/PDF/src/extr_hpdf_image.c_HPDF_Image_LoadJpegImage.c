
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int obj_class; } ;
struct TYPE_9__ {int stream; int filter; TYPE_1__ header; } ;
typedef int HPDF_Xref ;
typedef scalar_t__ HPDF_UINT ;
typedef int HPDF_Stream ;
typedef scalar_t__ HPDF_STATUS ;
typedef int HPDF_MMgr ;
typedef TYPE_2__* HPDF_Image ;
typedef TYPE_2__* HPDF_Dict ;
typedef int HPDF_BYTE ;


 TYPE_2__* HPDF_DictStream_New (int ,int ) ;
 scalar_t__ HPDF_Dict_AddName (TYPE_2__*,char*,char*) ;
 scalar_t__ HPDF_OK ;
 int HPDF_OSUBCLASS_XOBJECT ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SEEK_SET ;
 int HPDF_STREAM_BUF_SIZ ;
 scalar_t__ HPDF_STREAM_EOF ;
 int HPDF_STREAM_FILTER_DCT_DECODE ;
 scalar_t__ HPDF_Stream_Read (int ,int *,scalar_t__*) ;
 scalar_t__ HPDF_Stream_Seek (int ,int ,int ) ;
 scalar_t__ HPDF_Stream_Write (int ,int *,scalar_t__) ;
 scalar_t__ LoadJpegHeader (TYPE_2__*,int ) ;

HPDF_Image
HPDF_Image_LoadJpegImage (HPDF_MMgr mmgr,
                           HPDF_Stream jpeg_data,
                           HPDF_Xref xref)
{
    HPDF_Dict image;
    HPDF_STATUS ret = HPDF_OK;

    HPDF_PTRACE ((" HPDF_Image_LoadJpegImage\n"));

    image = HPDF_DictStream_New (mmgr, xref);
    if (!image)
        return ((void*)0);

    image->header.obj_class |= HPDF_OSUBCLASS_XOBJECT;


    image->filter = HPDF_STREAM_FILTER_DCT_DECODE;
    ret += HPDF_Dict_AddName (image, "Type", "XObject");
    ret += HPDF_Dict_AddName (image, "Subtype", "Image");
    if (ret != HPDF_OK)
        return ((void*)0);

    if (LoadJpegHeader (image, jpeg_data) != HPDF_OK)
        return ((void*)0);

    if (HPDF_Stream_Seek (jpeg_data, 0, HPDF_SEEK_SET) != HPDF_OK)
        return ((void*)0);

    for (;;) {
        HPDF_BYTE buf[HPDF_STREAM_BUF_SIZ];
        HPDF_UINT len = HPDF_STREAM_BUF_SIZ;
        HPDF_STATUS ret = HPDF_Stream_Read (jpeg_data, buf,
                &len);

        if (ret != HPDF_OK) {
            if (ret == HPDF_STREAM_EOF) {
                if (len > 0) {
                    ret = HPDF_Stream_Write (image->stream, buf, len);
                    if (ret != HPDF_OK)
                        return ((void*)0);
                }
                break;
            } else
                return ((void*)0);
        }

        if (HPDF_Stream_Write (image->stream, buf, len) != HPDF_OK)
            return ((void*)0);
    }

    return image;
}
