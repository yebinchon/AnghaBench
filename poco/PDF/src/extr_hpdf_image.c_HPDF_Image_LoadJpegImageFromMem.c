
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int error; } ;
typedef int HPDF_Xref ;
typedef int HPDF_UINT ;
typedef int HPDF_Stream ;
typedef TYPE_1__* HPDF_MMgr ;
typedef int * HPDF_Image ;
typedef int HPDF_BYTE ;


 int HPDF_INVALID_STREAM ;
 int * HPDF_Image_LoadJpegImage (TYPE_1__*,int ,int ) ;
 int HPDF_MemStream_New (TYPE_1__*,int ) ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 int HPDF_RaiseError (int ,int ,int ) ;
 int HPDF_Stream_Free (int ) ;
 int HPDF_Stream_Validate (int ) ;
 scalar_t__ HPDF_Stream_Write (int ,int const*,int ) ;

HPDF_Image
HPDF_Image_LoadJpegImageFromMem (HPDF_MMgr mmgr,
                            const HPDF_BYTE *buf,
                                  HPDF_UINT size,
                                  HPDF_Xref xref)
{
 HPDF_Stream jpeg_data;
 HPDF_Image image;

 HPDF_PTRACE ((" HPDF_Image_LoadJpegImageFromMem\n"));

 jpeg_data = HPDF_MemStream_New(mmgr,size);
 if (!HPDF_Stream_Validate (jpeg_data)) {
  HPDF_RaiseError (mmgr->error, HPDF_INVALID_STREAM, 0);
  return ((void*)0);
 }

 if (HPDF_Stream_Write (jpeg_data, buf, size) != HPDF_OK) {
  HPDF_Stream_Free (jpeg_data);
  return ((void*)0);
 }

 image = HPDF_Image_LoadJpegImage(mmgr,jpeg_data,xref);


 HPDF_Stream_Free (jpeg_data);

 return image;
}
