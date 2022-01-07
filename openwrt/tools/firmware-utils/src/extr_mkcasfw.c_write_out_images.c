
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_desc {int dummy; } ;
typedef int FILE ;


 int fs_image ;
 int image_writeout (int *,int *) ;
 int kernel_image ;

int
write_out_images(FILE *outfile)
{
 struct image_desc *desc;
 int i, res;

 res = image_writeout(outfile, &kernel_image);
 if (res)
  return res;

 res = image_writeout(outfile, &fs_image);
 if (res)
  return res;

 return 0;
}
