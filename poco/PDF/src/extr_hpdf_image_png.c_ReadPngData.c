
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ png_uint_32 ;
typedef int png_structp ;
typedef int png_infop ;
typedef scalar_t__ png_bytep ;
typedef int png_byte ;
struct TYPE_5__ {TYPE_1__* error; int mmgr; int stream; } ;
struct TYPE_4__ {scalar_t__ error_no; } ;
typedef scalar_t__ HPDF_UINT ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_2__* HPDF_Dict ;


 int HPDF_FreeMem (int ,scalar_t__) ;
 scalar_t__ HPDF_GetMem (int ,scalar_t__) ;
 scalar_t__ HPDF_OK ;
 scalar_t__ HPDF_Stream_Write (int ,scalar_t__,scalar_t__) ;
 scalar_t__ png_get_image_height (int ,int ) ;
 scalar_t__ png_get_rowbytes (int ,int ) ;
 int png_read_rows (int ,int **,int *,int) ;

__attribute__((used)) static HPDF_STATUS
ReadPngData (HPDF_Dict image,
              png_structp png_ptr,
              png_infop info_ptr)
{
    png_uint_32 len = png_get_rowbytes(png_ptr, info_ptr);
    png_uint_32 height = png_get_image_height(png_ptr, info_ptr);
    png_bytep buf_ptr = HPDF_GetMem (image->mmgr, len);

    if (buf_ptr) {
        HPDF_UINT i;

        for (i = 0; i < (HPDF_UINT)height; i++) {
            png_read_rows(png_ptr, (png_byte**)&buf_ptr, ((void*)0), 1);
            if (image->error->error_no != HPDF_OK)
                break;

            if (HPDF_Stream_Write (image->stream, buf_ptr, len) != HPDF_OK)
                break;
        }

        HPDF_FreeMem (image->mmgr, buf_ptr);
    }

    return image->error->error_no;
}
