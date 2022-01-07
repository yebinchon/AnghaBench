
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSAMPROW ;
typedef int ** JSAMPIMAGE ;
typedef int * JSAMPARRAY ;
typedef size_t JDIMENSION ;


 int jsimd_h2v1_merged_upsample_altivec (size_t,int **,size_t,int *) ;

void jsimd_h2v2_merged_upsample_altivec(JDIMENSION output_width,
                                        JSAMPIMAGE input_buf,
                                        JDIMENSION in_row_group_ctr,
                                        JSAMPARRAY output_buf)
{
  JSAMPROW inptr, outptr;

  inptr = input_buf[0][in_row_group_ctr];
  outptr = output_buf[0];

  input_buf[0][in_row_group_ctr] = input_buf[0][in_row_group_ctr * 2];
  jsimd_h2v1_merged_upsample_altivec(output_width, input_buf, in_row_group_ctr,
                                     output_buf);

  input_buf[0][in_row_group_ctr] = input_buf[0][in_row_group_ctr * 2 + 1];
  output_buf[0] = output_buf[1];
  jsimd_h2v1_merged_upsample_altivec(output_width, input_buf, in_row_group_ctr,
                                     output_buf);

  input_buf[0][in_row_group_ctr] = inptr;
  output_buf[0] = outptr;
}
