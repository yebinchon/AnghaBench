
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef int png_structp ;
typedef int png_infop ;
typedef int ********* png_bytep ;
typedef int png_byte ;
struct TYPE_5__ {int mmgr; int stream; TYPE_1__* error; } ;
struct TYPE_4__ {scalar_t__ error_no; } ;
typedef size_t HPDF_UINT ;
typedef scalar_t__ HPDF_STATUS ;
typedef int HPDF_INT ;
typedef TYPE_2__* HPDF_Dict ;


 scalar_t__ HPDF_FAILD_TO_ALLOC_MEM ;
 scalar_t__ HPDF_FILE_IO_ERROR ;
 int HPDF_FreeMem (int ,int **********) ;
 void* HPDF_GetMem (int ,int) ;
 scalar_t__ HPDF_INVALID_PNG_IMAGE ;
 scalar_t__ HPDF_OK ;
 scalar_t__ HPDF_Stream_Write (int ,int *********,int) ;
 int PNG_COLOR_MASK_ALPHA ;


 int memmove (int ,int ,int) ;
 int png_get_color_type (int ,int ) ;
 int png_get_image_height (int ,int ) ;
 int png_get_image_width (int ,int ) ;
 int png_get_rowbytes (int ,int ) ;
 int png_read_image (int ,int **********) ;

__attribute__((used)) static HPDF_STATUS
ReadTransparentPngData (HPDF_Dict image,
                         png_structp png_ptr,
                         png_infop info_ptr,
                         png_bytep smask_data)
{
 HPDF_STATUS ret = HPDF_OK;
 HPDF_INT row_len;
 HPDF_UINT i, j;
 png_bytep *row_ptr, row;
 png_byte color_type;
 png_uint_32 height = png_get_image_height(png_ptr, info_ptr);
 png_uint_32 width = png_get_image_width(png_ptr, info_ptr);

 color_type = png_get_color_type(png_ptr, info_ptr);

 if (!(color_type & PNG_COLOR_MASK_ALPHA)) {
  return HPDF_INVALID_PNG_IMAGE;
 }

 row_ptr = HPDF_GetMem (image->mmgr, height * sizeof(png_bytep));
 if (!row_ptr) {
  return HPDF_FAILD_TO_ALLOC_MEM;
 } else {
  png_uint_32 len = png_get_rowbytes(png_ptr, info_ptr);

  for (i = 0; i < (HPDF_UINT)height; i++) {
   row_ptr[i] = HPDF_GetMem(image->mmgr, len);
   if (!row_ptr[i]) {
    for (; i > 0; i--) {
     HPDF_FreeMem (image->mmgr, row_ptr[i]);
    }
    HPDF_FreeMem (image->mmgr, row_ptr);
    return HPDF_FAILD_TO_ALLOC_MEM;
   }
  }
 }

 png_read_image(png_ptr, row_ptr);
 if (image->error->error_no != HPDF_OK) {
  ret = HPDF_INVALID_PNG_IMAGE;
  goto Error;
 }

 switch (color_type) {
  case 128:
   row_len = 3 * width * sizeof(png_byte);
   for (j = 0; j < height; j++) {
    for (i = 0; i < width; i++) {
     row = row_ptr[j];
     memmove(row + (3 * i), row + (4*i), 3);
     smask_data[width * j + i] = row[4 * i + 3];
    }

    if (HPDF_Stream_Write (image->stream, row, row_len) != HPDF_OK) {
     ret = HPDF_FILE_IO_ERROR;
     goto Error;
    }
   }
   break;
  case 129:
   row_len = width * sizeof(png_byte);
   for (j = 0; j < height; j++) {
    for (i = 0; i < width; i++) {
     row = row_ptr[j];
     row[i] = row[2 * i];
     smask_data[width * j + i] = row[2 * i + 1];
    }

    if (HPDF_Stream_Write (image->stream, row, row_len) != HPDF_OK) {
     ret = HPDF_FILE_IO_ERROR;
     goto Error;
    }
   }
   break;
  default:
   ret = HPDF_INVALID_PNG_IMAGE;
   goto Error;
 }

Error:
 for (i = 0; i < (HPDF_UINT)height; i++) {
  HPDF_FreeMem (image->mmgr, row_ptr[i]);
 }

 HPDF_FreeMem (image->mmgr, row_ptr);
 return ret;
}
