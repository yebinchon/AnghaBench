
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int j_decompress_ptr ;


 int JPEG_REACHED_SOS ;

int my_read_markers(j_decompress_ptr dinfo)
{
 return JPEG_REACHED_SOS;
}
