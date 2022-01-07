
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int png_structp ;
typedef int png_bytep ;
typedef int HPDF_UINT ;
typedef int HPDF_Stream ;


 int HPDF_Stream_Read (int ,int ,int *) ;
 int png_get_io_ptr (int ) ;

__attribute__((used)) static void
PngReadFunc (png_structp png_ptr,
              png_bytep data,
              png_uint_32 length)
{
    HPDF_UINT len = length;
    HPDF_Stream stream = (HPDF_Stream)png_get_io_ptr (png_ptr);

    HPDF_Stream_Read (stream, data, &len);
}
