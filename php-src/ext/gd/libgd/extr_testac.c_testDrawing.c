
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdImagePtr ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int gdImageAlphaBlending (int ,int) ;
 int gdImageCopyResampled (int ,int ,int ,int ,int ,int ,int,int,double,double) ;
 int gdImageCreateTrueColor (int,int) ;
 int gdImageDestroy (int ) ;
 int gdImageFill (int ,int,int,int ) ;
 int gdImagePng (int ,int *) ;
 double gdImageSX (int ) ;
 double gdImageSY (int ) ;
 int gdImageSaveAlpha (int ,int) ;
 int gdImageTrueColorToPalette (int ,int,int) ;
 int gdTrueColor (int,int,int) ;

void
testDrawing (
       gdImagePtr im_in,
       double scale,
       int blending,
       int palette,
       char *filename)
{
  gdImagePtr im_out;
  FILE *out;

  im_out = gdImageCreateTrueColor ((int) (gdImageSX (im_in) * scale),
       (int) (gdImageSY (im_in) * scale));
  gdImageAlphaBlending (im_out, blending);


  gdImageFill (im_out, (int) (gdImageSX (im_in) * scale / 2),
        (int) (gdImageSY (im_in) * scale / 2),
        gdTrueColor (192, 192, 255));






  gdImageCopyResampled (im_out, im_in,
   0, 0,
   0, 0,
       (int) (gdImageSX (im_in) * scale), (int) (gdImageSY (im_in) * scale),
   gdImageSX (im_in), gdImageSY (im_in));

  out = fopen (filename, "wb");





  gdImageSaveAlpha (im_out, !blending);


  if (palette)
    {

      gdImageTrueColorToPalette (im_out, 1, 256);
    }

  gdImagePng (im_out, out);
  fclose (out);

  gdImageDestroy (im_out);
}
