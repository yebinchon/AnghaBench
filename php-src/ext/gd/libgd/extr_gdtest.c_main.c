
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_51__ TYPE_4__ ;
typedef struct TYPE_50__ TYPE_3__ ;
typedef struct TYPE_49__ TYPE_2__ ;
typedef struct TYPE_48__ TYPE_1__ ;


typedef int of ;
struct TYPE_48__ {int * context; int source; } ;
typedef TYPE_1__ gdSource ;
struct TYPE_49__ {int * context; int sink; } ;
typedef TYPE_2__ gdSink ;
typedef TYPE_3__* gdImagePtr ;
typedef TYPE_4__* gdIOCtxPtr ;
struct TYPE_51__ {int (* gd_free ) (TYPE_4__*) ;} ;
struct TYPE_50__ {int colorsTotal; } ;
typedef int FILE ;


 int CompareImages (char*,TYPE_3__*,TYPE_3__*) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int freadWrapper ;
 int fwriteWrapper ;
 int gdImageBlue (TYPE_3__*,int) ;
 int gdImageColorAllocate (TYPE_3__*,int,int ,int) ;
 int gdImageColorClosest (TYPE_3__*,int ,int ,int ) ;
 int gdImageColorsTotal (TYPE_3__*) ;
 int gdImageCopyMerge (TYPE_3__*,TYPE_3__*,int,int,int,int,int,int,int) ;
 int gdImageCopyMergeGray (TYPE_3__*,TYPE_3__*,int,int,int,int,int,int,int) ;
 TYPE_3__* gdImageCreate (int,int) ;
 TYPE_3__* gdImageCreateFromGd (int *) ;
 TYPE_3__* gdImageCreateFromGd2 (int *) ;
 TYPE_3__* gdImageCreateFromGd2Ctx (TYPE_4__*) ;
 TYPE_3__* gdImageCreateFromGd2Part (int *,int,int,int,int) ;
 TYPE_3__* gdImageCreateFromGdCtx (TYPE_4__*) ;
 TYPE_3__* gdImageCreateFromJpeg (int *) ;
 TYPE_3__* gdImageCreateFromPng (int *) ;
 TYPE_3__* gdImageCreateFromPngCtx (TYPE_4__*) ;
 TYPE_3__* gdImageCreateFromPngSource (TYPE_1__*) ;
 TYPE_3__* gdImageCreateFromWBMP (int *) ;
 int gdImageDestroy (TYPE_3__*) ;
 int gdImageFilledRectangle (TYPE_3__*,int,int,int,int,int) ;
 int gdImageGd (TYPE_3__*,int *) ;
 int gdImageGd2 (TYPE_3__*,int *,int,int) ;
 void* gdImageGd2Ptr (TYPE_3__*,int,int,int*) ;
 void* gdImageGdPtr (TYPE_3__*,int*) ;
 int gdImageGreen (TYPE_3__*,int) ;
 int gdImageJpeg (TYPE_3__*,int *,int) ;
 int gdImagePng (TYPE_3__*,int *) ;
 void* gdImagePngPtr (TYPE_3__*,int*) ;
 int gdImagePngToSink (TYPE_3__*,TYPE_2__*) ;
 int gdImageRed (TYPE_3__*,int) ;
 int gdImageWBMP (TYPE_3__*,int,int *) ;
 TYPE_4__* gdNewDynamicCtx (int,void*) ;
 int printf (char*,...) ;
 int rewind (int *) ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;
 int stub1 (TYPE_4__*) ;
 int stub2 (TYPE_4__*) ;
 int stub3 (TYPE_4__*) ;
 int unlink (char*) ;

int
main (int argc, char **argv)
{
  gdImagePtr im, ref, im2, im3;
  FILE *in, *out;
  void *iptr;
  int sz;
  gdIOCtxPtr ctx;
  char of[256];
  int colRed, colBlu;
  gdSource imgsrc;
  gdSink imgsnk;
  int foreground;
  int i;
  if (argc != 2)
    {
      fprintf (stderr, "Usage: gdtest filename.png\n");
      exit (1);
    }
  in = fopen (argv[1], "rb");
  if (!in)
    {
      fprintf (stderr, "Input file does not exist!\n");
      exit (1);
    }
  im = gdImageCreateFromPng (in);

  rewind (in);
  ref = gdImageCreateFromPng (in);

  fclose (in);

  printf ("Reference File has %d Palette entries\n", ref->colorsTotal);

  CompareImages ("Initial Versions", ref, im);





  snprintf (of, sizeof(of), "%s.png", argv[1]);
  out = fopen (of, "wb");
  gdImagePng (im, out);
  fclose (out);

  in = fopen (of, "rb");
  if (!in)
    {
      fprintf (stderr, "PNG Output file does not exist!\n");
      exit (1);
    }
  im2 = gdImageCreateFromPng (in);
  fclose (in);

  CompareImages ("GD->PNG File->GD", ref, im2);

  unlink (of);
  gdImageDestroy (im2);

  iptr = gdImagePngPtr (im, &sz);
  ctx = gdNewDynamicCtx (sz, iptr);
  im2 = gdImageCreateFromPngCtx (ctx);

  CompareImages ("GD->PNG ptr->GD", ref, im2);

  gdImageDestroy (im2);
  ctx->gd_free (ctx);





  snprintf (of, sizeof(of), "%s.gd2", argv[1]);
  out = fopen (of, "wb");
  gdImageGd2 (im, out, 128, 2);
  fclose (out);

  in = fopen (of, "rb");
  if (!in)
    {
      fprintf (stderr, "GD2 Output file does not exist!\n");
      exit (1);
    }
  im2 = gdImageCreateFromGd2 (in);
  fclose (in);

  CompareImages ("GD->GD2 File->GD", ref, im2);

  unlink (of);
  gdImageDestroy (im2);

  iptr = gdImageGd2Ptr (im, 128, 2, &sz);

  ctx = gdNewDynamicCtx (sz, iptr);

  im2 = gdImageCreateFromGd2Ctx (ctx);


  CompareImages ("GD->GD2 ptr->GD", ref, im2);

  gdImageDestroy (im2);
  ctx->gd_free (ctx);





  snprintf (of, sizeof(of), "%s.gd", argv[1]);
  out = fopen (of, "wb");
  gdImageGd (im, out);
  fclose (out);

  in = fopen (of, "rb");
  if (!in)
    {
      fprintf (stderr, "GD Output file does not exist!\n");
      exit (1);
    }
  im2 = gdImageCreateFromGd (in);
  fclose (in);

  CompareImages ("GD->GD File->GD", ref, im2);

  unlink (of);
  gdImageDestroy (im2);

  iptr = gdImageGdPtr (im, &sz);

  ctx = gdNewDynamicCtx (sz, iptr);

  im2 = gdImageCreateFromGdCtx (ctx);


  CompareImages ("GD->GD ptr->GD", ref, im2);

  gdImageDestroy (im2);
  ctx->gd_free (ctx);





  in = fopen (argv[1], "rb");

  imgsrc.source = freadWrapper;
  imgsrc.context = in;
  im2 = gdImageCreateFromPngSource (&imgsrc);
  fclose (in);

  if (im2 == ((void*)0))
    {
      printf ("GD Source: ERROR Null returned by gdImageCreateFromPngSource\n");
    }
  else
    {
      CompareImages ("GD Source", ref, im2);
      gdImageDestroy (im2);
    };






  snprintf (of, sizeof(of), "%s.snk", argv[1]);
  out = fopen (of, "wb");
  imgsnk.sink = fwriteWrapper;
  imgsnk.context = out;
  gdImagePngToSink (im, &imgsnk);
  fclose (out);
  in = fopen (of, "rb");
  if (!in)
    {
      fprintf (stderr, "GD Sink: ERROR - GD Sink Output file does not exist!\n");
    }
  else
    {
      im2 = gdImageCreateFromPng (in);
      fclose (in);

      CompareImages ("GD Sink", ref, im2);
      gdImageDestroy (im2);
    };

  unlink (of);




  in = fopen ("test/gdtest_200_300_150_100.png", "rb");
  if (!in)
    {
      fprintf (stderr, "gdtest_200_300_150_100.png does not exist!\n");
      exit (1);
    }
  im2 = gdImageCreateFromPng (in);
  fclose (in);


  in = fopen ("test/gdtest.gd2", "rb");
  if (!in)
    {
      fprintf (stderr, "gdtest.gd2 does not exist!\n");
      exit (1);
    }
  im3 = gdImageCreateFromGd2Part (in, 200, 300, 150, 100);
  fclose (in);

  CompareImages ("GD2Part (gdtest_200_300_150_100.png, gdtest.gd2(part))", im2, im3);

  gdImageDestroy (im2);
  gdImageDestroy (im3);




  in = fopen ("test/gdtest.png", "rb");
  if (!in)
    {
      fprintf (stderr, "gdtest.png does not exist!\n");
      exit (1);
    }
  im2 = gdImageCreateFromPng (in);
  fclose (in);

  im3 = gdImageCreate (100, 60);
  colRed = gdImageColorAllocate (im3, 255, 0, 0);
  colBlu = gdImageColorAllocate (im3, 0, 0, 255);
  gdImageFilledRectangle (im3, 0, 0, 49, 30, colRed);
  gdImageFilledRectangle (im3, 50, 30, 99, 59, colBlu);

  gdImageCopyMerge (im2, im3, 150, 200, 10, 10, 90, 50, 50);
  gdImageCopyMerge (im2, im3, 180, 70, 10, 10, 90, 50, 50);

  gdImageCopyMergeGray (im2, im3, 250, 160, 10, 10, 90, 50, 50);
  gdImageCopyMergeGray (im2, im3, 80, 70, 10, 10, 90, 50, 50);

  gdImageDestroy (im3);

  in = fopen ("test/gdtest_merge.png", "rb");
  if (!in)
    {
      fprintf (stderr, "gdtest_merge.png does not exist!\n");
      exit (1);
    }
  im3 = gdImageCreateFromPng (in);
  fclose (in);

  printf ("[Merged Image has %d colours]\n", im2->colorsTotal);
  CompareImages ("Merged (gdtest.png, gdtest_merge.png)", im2, im3);

  gdImageDestroy (im2);
  gdImageDestroy (im3);
  fprintf (stderr, "NOTE: the WBMP output image will NOT match the original unless the original\n"
    "is also black and white. This is OK!\n");
  foreground = gdImageColorClosest (im, 0, 0, 0);
  fprintf (stderr, "Foreground index is %d\n", foreground);
  if (foreground == -1)
    {
      fprintf (stderr, "Source image has no colors, skipping wbmp test.\n");
    }
  else
    {
      out = fopen ("test/gdtest.wbmp", "wb");
      if (!out)
 {
   fprintf (stderr, "Can't create file test/gdtest.wbmp.\n");
   exit (1);
 }
      gdImageWBMP (im, foreground, out);
      fclose (out);
      in = fopen ("test/gdtest.wbmp", "rb");
      if (!in)
 {
   fprintf (stderr, "Can't open file test/gdtest.wbmp.\n");
   exit (1);
 }
      im2 = gdImageCreateFromWBMP (in);
      fprintf (stderr, "WBMP has %d colors\n", gdImageColorsTotal (im2));
      fprintf (stderr, "WBMP colors are:\n");
      for (i = 0; (i < gdImageColorsTotal (im2)); i++)
 {
   fprintf (stderr, "%02X%02X%02X\n",
     gdImageRed (im2, i),
     gdImageGreen (im2, i),
     gdImageBlue (im2, i));
 }
      fclose (in);
      if (!im2)
 {
   fprintf (stderr, "gdImageCreateFromWBMP failed.\n");
   exit (1);
 }
      CompareImages ("WBMP test (gdtest.png, gdtest.wbmp)", ref, im2);
      out = fopen ("test/gdtest_wbmp_to_png.png", "wb");
      if (!out)
 {
   fprintf (stderr, "Can't create file test/gdtest_wbmp_to_png.png.\n");
   exit (1);
 }
      gdImagePng (im2, out);
      fclose (out);
      gdImageDestroy (im2);
    }
  gdImageDestroy (im);
  gdImageDestroy (ref);

  return 0;
}
