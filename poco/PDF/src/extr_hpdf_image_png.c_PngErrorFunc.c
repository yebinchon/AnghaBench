
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_structp ;
typedef int HPDF_UINT ;
typedef scalar_t__ HPDF_STATUS ;
typedef scalar_t__ HPDF_Error ;


 scalar_t__ HPDF_AToI (char*) ;
 int HPDF_LIBPNG_ERROR ;
 int HPDF_MemSet (char*,int ,int) ;
 int HPDF_SetError (scalar_t__,int ,scalar_t__) ;
 scalar_t__ png_get_error_ptr (int ) ;

__attribute__((used)) static void
PngErrorFunc (png_structp png_ptr,
               const char *msg)
{
    char error_number[16];
    HPDF_UINT i;
    HPDF_STATUS detail_no;
    HPDF_Error error;


    HPDF_MemSet (error_number, 0, 16);

     for (i = 0; i < 15; i++) {
         error_number[i] = *(msg + i);
         if (*(msg + i + 1) == ' ')
             break;
     }

     error = (HPDF_Error)png_get_error_ptr (png_ptr);
     detail_no = (HPDF_STATUS)HPDF_AToI (error_number);
     HPDF_SetError (error, HPDF_LIBPNG_ERROR, detail_no);
}
