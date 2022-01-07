
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef int * png_structp ;
typedef int png_rw_ptr ;
typedef int * png_infop ;
typedef int png_bytep ;
struct TYPE_19__ {scalar_t__ error_no; } ;
struct TYPE_17__ {int obj_class; } ;
struct TYPE_18__ {TYPE_3__* error; int after_write_fn; int before_write_fn; int mmgr; int stream; TYPE_1__ header; } ;
typedef scalar_t__ HPDF_Xref ;
typedef int HPDF_UINT ;
typedef scalar_t__ HPDF_Stream ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_2__* HPDF_Dict ;
typedef scalar_t__ HPDF_BOOL ;


 scalar_t__ CreatePallet (TYPE_2__*,int *,int *) ;
 TYPE_2__* HPDF_DictStream_New (int ,scalar_t__) ;
 scalar_t__ HPDF_Dict_Add (TYPE_2__*,char*,TYPE_2__*) ;
 scalar_t__ HPDF_Dict_AddName (TYPE_2__*,char*,char*) ;
 scalar_t__ HPDF_Dict_AddNumber (TYPE_2__*,char*,int ) ;
 int HPDF_Dict_Free (TYPE_2__*) ;
 scalar_t__ HPDF_FAILD_TO_ALLOC_MEM ;
 scalar_t__ HPDF_FILE_IO_ERROR ;
 int HPDF_FreeMem (int ,int ) ;
 int HPDF_GetMem (int ,int) ;
 scalar_t__ HPDF_INVALID_PNG_IMAGE ;
 scalar_t__ HPDF_OK ;
 int HPDF_OSUBCLASS_XOBJECT ;
 int HPDF_PNG_BYTES_TO_CHECK ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (TYPE_3__*,scalar_t__,int ) ;
 scalar_t__ HPDF_Stream_Write (int ,int ,int) ;
 int PNG_COLOR_MASK_ALPHA ;
 int PNG_COLOR_TYPE_GRAY ;
 int PNG_COLOR_TYPE_GRAY_ALPHA ;
 int PNG_COLOR_TYPE_PALETTE ;
 int PNG_INFO_tRNS ;
 scalar_t__ PNG_INTERLACE_NONE ;
 int PNG_LIBPNG_VER_STRING ;
 int PngAfterWrite ;
 int PngBeforeWrite ;
 int PngErrorFunc ;
 int PngReadFunc ;
 scalar_t__ ReadPngData (TYPE_2__*,int *,int *) ;
 scalar_t__ ReadPngData_Interlaced (TYPE_2__*,int *,int *) ;
 scalar_t__ ReadTransparentPaletteData (TYPE_2__*,int *,int *,int ,int ,int) ;
 scalar_t__ ReadTransparentPngData (TYPE_2__*,int *,int *,int ) ;
 int * png_create_info_struct (int *) ;
 int * png_create_read_struct (int ,TYPE_3__*,int ,int ) ;
 int png_destroy_read_struct (int **,int **,int *) ;
 int png_get_IHDR (int *,int *,int*,int*,int*,int*,int *,int *,int *) ;
 scalar_t__ png_get_interlace_type (int *,int *) ;
 int png_get_tRNS (int *,int *,int *,int*,int *) ;
 int png_get_valid (int *,int *,int ) ;
 int png_read_info (int *,int *) ;
 int png_read_update_info (int *,int *) ;
 int png_set_read_fn (int *,void*,int ) ;
 int png_set_sig_bytes (int *,int ) ;
 int png_set_strip_16 (int *) ;

__attribute__((used)) static HPDF_STATUS
LoadPngData (HPDF_Dict image,
              HPDF_Xref xref,
              HPDF_Stream png_data,
              HPDF_BOOL delayed_loading)

{
 HPDF_STATUS ret = HPDF_OK;
 png_uint_32 width, height;
 int bit_depth, color_type;
 png_structp png_ptr = ((void*)0);
 png_infop info_ptr = ((void*)0);

 HPDF_PTRACE ((" HPDF_Image_LoadPngImage\n"));


 png_ptr = png_create_read_struct (PNG_LIBPNG_VER_STRING,
   image->error, PngErrorFunc, PngErrorFunc);

 if (png_ptr == ((void*)0)) {
  HPDF_SetError (image->error, HPDF_FAILD_TO_ALLOC_MEM, 0);
  return HPDF_FAILD_TO_ALLOC_MEM;
 }


 info_ptr = png_create_info_struct (png_ptr);

 if (info_ptr == ((void*)0)) {
  HPDF_SetError (image->error, HPDF_FAILD_TO_ALLOC_MEM, 0);
  goto Exit;
 }

 png_set_sig_bytes (png_ptr, HPDF_PNG_BYTES_TO_CHECK);
 png_set_read_fn (png_ptr, (void *)png_data, (png_rw_ptr)&PngReadFunc);


 png_read_info(png_ptr, info_ptr);
 if (image->error->error_no != HPDF_OK) {
  goto Exit;
 }

 png_get_IHDR(png_ptr, info_ptr, &width, &height, &bit_depth, &color_type, ((void*)0), ((void*)0), ((void*)0));


 if (bit_depth == 16) {
  png_set_strip_16(png_ptr);
 }

 png_read_update_info(png_ptr, info_ptr);
 if (image->error->error_no != HPDF_OK) {
  goto Exit;
 }


 if (xref && PNG_COLOR_TYPE_PALETTE & color_type) {
  png_bytep trans;
  int num_trans;
  HPDF_Dict smask;
  png_bytep smask_data;

  if (!png_get_valid(png_ptr, info_ptr, PNG_INFO_tRNS) ||
   !png_get_tRNS(png_ptr, info_ptr, &trans, &num_trans, ((void*)0))) {
   goto no_transparent_color_in_palette;
  }

  smask = HPDF_DictStream_New (image->mmgr, xref);
  if (!smask) {
   ret = HPDF_FAILD_TO_ALLOC_MEM;
   goto Exit;
  }

  smask->header.obj_class |= HPDF_OSUBCLASS_XOBJECT;
  ret = HPDF_Dict_AddName (smask, "Type", "XObject");
  ret += HPDF_Dict_AddName (smask, "Subtype", "Image");
  ret += HPDF_Dict_AddNumber (smask, "Width", (HPDF_UINT)width);
  ret += HPDF_Dict_AddNumber (smask, "Height", (HPDF_UINT)height);
  ret += HPDF_Dict_AddName (smask, "ColorSpace", "DeviceGray");
  ret += HPDF_Dict_AddNumber (smask, "BitsPerComponent", (HPDF_UINT)bit_depth);

  if (ret != HPDF_OK) {
   HPDF_Dict_Free(smask);
   ret = HPDF_INVALID_PNG_IMAGE;
   goto Exit;
  }

  smask_data = HPDF_GetMem(image->mmgr, width * height);
  if (!smask_data) {
   HPDF_Dict_Free(smask);
   ret = HPDF_FAILD_TO_ALLOC_MEM;
   goto Exit;
  }

  if (ReadTransparentPaletteData(image, png_ptr, info_ptr, smask_data, trans, num_trans) != HPDF_OK) {
   HPDF_FreeMem(image->mmgr, smask_data);
   HPDF_Dict_Free(smask);
   ret = HPDF_INVALID_PNG_IMAGE;
   goto Exit;
  }

  if (HPDF_Stream_Write(smask->stream, smask_data, width * height) != HPDF_OK) {
   HPDF_FreeMem(image->mmgr, smask_data);
   HPDF_Dict_Free(smask);
   ret = HPDF_FILE_IO_ERROR;
   goto Exit;
  }
  HPDF_FreeMem(image->mmgr, smask_data);


  ret += CreatePallet(image, png_ptr, info_ptr);
  ret += HPDF_Dict_AddNumber (image, "Width", (HPDF_UINT)width);
  ret += HPDF_Dict_AddNumber (image, "Height", (HPDF_UINT)height);
  ret += HPDF_Dict_AddNumber (image, "BitsPerComponent", (HPDF_UINT)bit_depth);
  ret += HPDF_Dict_Add (image, "SMask", smask);

  png_destroy_read_struct(&png_ptr, &info_ptr, ((void*)0));
  return HPDF_OK;
 }

no_transparent_color_in_palette:



 if (xref && PNG_COLOR_MASK_ALPHA & color_type) {
  HPDF_Dict smask;
  png_bytep smask_data;

  smask = HPDF_DictStream_New (image->mmgr, xref);
  if (!smask) {
   ret = HPDF_FAILD_TO_ALLOC_MEM;
   goto Exit;
  }

  smask->header.obj_class |= HPDF_OSUBCLASS_XOBJECT;
  ret = HPDF_Dict_AddName (smask, "Type", "XObject");
  ret += HPDF_Dict_AddName (smask, "Subtype", "Image");
  ret += HPDF_Dict_AddNumber (smask, "Width", (HPDF_UINT)width);
  ret += HPDF_Dict_AddNumber (smask, "Height", (HPDF_UINT)height);
  ret += HPDF_Dict_AddName (smask, "ColorSpace", "DeviceGray");
  ret += HPDF_Dict_AddNumber (smask, "BitsPerComponent", (HPDF_UINT)bit_depth);

  if (ret != HPDF_OK) {
   HPDF_Dict_Free(smask);
   ret = HPDF_INVALID_PNG_IMAGE;
   goto Exit;
  }

  smask_data = HPDF_GetMem(image->mmgr, width * height);
  if (!smask_data) {
   HPDF_Dict_Free(smask);
   ret = HPDF_FAILD_TO_ALLOC_MEM;
   goto Exit;
  }

  if (ReadTransparentPngData(image, png_ptr, info_ptr, smask_data) != HPDF_OK) {
   HPDF_FreeMem(image->mmgr, smask_data);
   HPDF_Dict_Free(smask);
   ret = HPDF_INVALID_PNG_IMAGE;
   goto Exit;
  }

  if (HPDF_Stream_Write(smask->stream, smask_data, width * height) != HPDF_OK) {
   HPDF_FreeMem(image->mmgr, smask_data);
   HPDF_Dict_Free(smask);
   ret = HPDF_FILE_IO_ERROR;
   goto Exit;
  }
  HPDF_FreeMem(image->mmgr, smask_data);

  if (color_type == PNG_COLOR_TYPE_GRAY_ALPHA) {
   ret += HPDF_Dict_AddName (image, "ColorSpace", "DeviceGray");
  } else {
   ret += HPDF_Dict_AddName (image, "ColorSpace", "DeviceRGB");
  }
  ret += HPDF_Dict_AddNumber (image, "Width", (HPDF_UINT)width);
  ret += HPDF_Dict_AddNumber (image, "Height", (HPDF_UINT)height);
  ret += HPDF_Dict_AddNumber (image, "BitsPerComponent", (HPDF_UINT)bit_depth);
  ret += HPDF_Dict_Add (image, "SMask", smask);

  png_destroy_read_struct(&png_ptr, &info_ptr, ((void*)0));
  return HPDF_OK;
 }




 if (color_type == PNG_COLOR_TYPE_PALETTE)
  ret = CreatePallet(image, png_ptr, info_ptr);
 else if (color_type == PNG_COLOR_TYPE_GRAY)
  ret = HPDF_Dict_AddName (image, "ColorSpace", "DeviceGray");
 else
  ret = HPDF_Dict_AddName (image, "ColorSpace", "DeviceRGB");

 if (ret != HPDF_OK)
  goto Exit;





 if (delayed_loading) {
  image->before_write_fn = PngBeforeWrite;
  image->after_write_fn = PngAfterWrite;
 } else {
  if (png_get_interlace_type(png_ptr, info_ptr) != PNG_INTERLACE_NONE)
   ret = ReadPngData_Interlaced(image, png_ptr, info_ptr);
  else
   ret = ReadPngData(image, png_ptr, info_ptr);

  if (ret != HPDF_OK)
   goto Exit;
 }


 if (HPDF_Dict_AddNumber (image, "Width", (HPDF_UINT)width)
   != HPDF_OK)
  goto Exit;

 if (HPDF_Dict_AddNumber (image, "Height", (HPDF_UINT)height)
   != HPDF_OK)
  goto Exit;

 if (HPDF_Dict_AddNumber (image, "BitsPerComponent",
    (HPDF_UINT)bit_depth) != HPDF_OK)
  goto Exit;


 png_destroy_read_struct(&png_ptr, &info_ptr, ((void*)0));

 return HPDF_OK;

Exit:
 png_destroy_read_struct(&png_ptr, &info_ptr, ((void*)0));

 if (ret != HPDF_OK) {
  return ret;
 }
 return image->error->error_no;
}
