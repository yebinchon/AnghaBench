
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* resample_row_hv_2_kernel; void* YCbCr_to_RGB_kernel; void* idct_block_kernel; } ;
typedef TYPE_1__ stbi__jpeg ;


 void* stbi__YCbCr_to_RGB_row ;
 void* stbi__YCbCr_to_RGB_simd ;
 void* stbi__idct_block ;
 void* stbi__idct_simd ;
 void* stbi__resample_row_hv_2 ;
 void* stbi__resample_row_hv_2_simd ;
 scalar_t__ stbi__sse2_available () ;

__attribute__((used)) static void stbi__setup_jpeg(stbi__jpeg *j)
{
   j->idct_block_kernel = stbi__idct_block;
   j->YCbCr_to_RGB_kernel = stbi__YCbCr_to_RGB_row;
   j->resample_row_hv_2_kernel = stbi__resample_row_hv_2;
}
