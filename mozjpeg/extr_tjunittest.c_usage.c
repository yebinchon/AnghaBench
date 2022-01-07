
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,...) ;

void usage(char *progName)
{
  printf("\nUSAGE: %s [options]\n\n", progName);
  printf("Options:\n");
  printf("-yuv = test YUV encoding/decoding support\n");
  printf("-noyuvpad = do not pad each line of each Y, U, and V plane to the nearest\n");
  printf("            4-byte boundary\n");
  printf("-alloc = test automatic buffer allocation\n");
  printf("-bmp = tjLoadImage()/tjSaveImage() unit test\n\n");
  exit(1);
}
