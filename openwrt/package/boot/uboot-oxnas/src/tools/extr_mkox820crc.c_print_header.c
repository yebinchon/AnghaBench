
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* start_vector; int length; int img_CRC; int CRC; } ;


 int NUMBER_VECTORS ;
 TYPE_1__ img_header ;
 int printf (char*,...) ;

void print_header(void)
{
 int i;

 printf("vectors in header\n");
 for (i = 0; i < NUMBER_VECTORS; i++) {
  printf("%d:0x%08x\n", i, img_header.start_vector[i]);
 }
 printf("length:%8x\nimg_CRC:0x%08x\nHeader CRC:0x%08x\n",
  img_header.length, img_header.img_CRC, img_header.CRC);
}
