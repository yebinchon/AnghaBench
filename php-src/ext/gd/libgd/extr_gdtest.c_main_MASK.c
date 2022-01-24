#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_51__   TYPE_4__ ;
typedef  struct TYPE_50__   TYPE_3__ ;
typedef  struct TYPE_49__   TYPE_2__ ;
typedef  struct TYPE_48__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  of ;
struct TYPE_48__ {int /*<<< orphan*/ * context; int /*<<< orphan*/  source; } ;
typedef  TYPE_1__ gdSource ;
struct TYPE_49__ {int /*<<< orphan*/ * context; int /*<<< orphan*/  sink; } ;
typedef  TYPE_2__ gdSink ;
typedef  TYPE_3__* gdImagePtr ;
typedef  TYPE_4__* gdIOCtxPtr ;
struct TYPE_51__ {int /*<<< orphan*/  (* gd_free ) (TYPE_4__*) ;} ;
struct TYPE_50__ {int colorsTotal; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  freadWrapper ; 
 int /*<<< orphan*/  fwriteWrapper ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_3__*,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_3__*,int,int,int,int,int,int,int) ; 
 TYPE_3__* FUNC11 (int,int) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC14 (TYPE_4__*) ; 
 TYPE_3__* FUNC15 (int /*<<< orphan*/ *,int,int,int,int) ; 
 TYPE_3__* FUNC16 (TYPE_4__*) ; 
 TYPE_3__* FUNC17 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC18 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC19 (TYPE_4__*) ; 
 TYPE_3__* FUNC20 (TYPE_1__*) ; 
 TYPE_3__* FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*,int /*<<< orphan*/ *,int,int) ; 
 void* FUNC26 (TYPE_3__*,int,int,int*) ; 
 void* FUNC27 (TYPE_3__*,int*) ; 
 int FUNC28 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 void* FUNC31 (TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC33 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC35 (int,void*) ; 
 int /*<<< orphan*/  FUNC36 (char*,...) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC39 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC40 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC41 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC42 (char*) ; 

int
FUNC43 (int argc, char **argv)
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
      FUNC4 (stderr, "Usage: gdtest filename.png\n");
      FUNC1 (1);
    }
  in = FUNC3 (argv[1], "rb");
  if (!in)
    {
      FUNC4 (stderr, "Input file does not exist!\n");
      FUNC1 (1);
    }
  im = FUNC18 (in);

  FUNC37 (in);
  ref = FUNC18 (in);

  FUNC2 (in);

  FUNC36 ("Reference File has %d Palette entries\n", ref->colorsTotal);

  FUNC0 ("Initial Versions", ref, im);


  /* */
  /* Send to PNG File then Ptr */
  /* */
  FUNC38 (of, sizeof(of), "%s.png", argv[1]);
  out = FUNC3 (of, "wb");
  FUNC30 (im, out);
  FUNC2 (out);

  in = FUNC3 (of, "rb");
  if (!in)
    {
      FUNC4 (stderr, "PNG Output file does not exist!\n");
      FUNC1 (1);
    }
  im2 = FUNC18 (in);
  FUNC2 (in);

  FUNC0 ("GD->PNG File->GD", ref, im2);

  FUNC42 (of);
  FUNC22 (im2);

  iptr = FUNC31 (im, &sz);
  ctx = FUNC35 (sz, iptr);
  im2 = FUNC19 (ctx);

  FUNC0 ("GD->PNG ptr->GD", ref, im2);

  FUNC22 (im2);
  ctx->gd_free (ctx);


  /* */
  /* Send to GD2 File then Ptr */
  /* */
  FUNC38 (of, sizeof(of), "%s.gd2", argv[1]);
  out = FUNC3 (of, "wb");
  FUNC25 (im, out, 128, 2);
  FUNC2 (out);

  in = FUNC3 (of, "rb");
  if (!in)
    {
      FUNC4 (stderr, "GD2 Output file does not exist!\n");
      FUNC1 (1);
    }
  im2 = FUNC13 (in);
  FUNC2 (in);

  FUNC0 ("GD->GD2 File->GD", ref, im2);

  FUNC42 (of);
  FUNC22 (im2);

  iptr = FUNC26 (im, 128, 2, &sz);
  /*printf("Got ptr %d (size %d)\n",iptr, sz); */
  ctx = FUNC35 (sz, iptr);
  /*printf("Got ctx %d\n",ctx); */
  im2 = FUNC14 (ctx);
  /*printf("Got img2 %d\n",im2); */

  FUNC0 ("GD->GD2 ptr->GD", ref, im2);

  FUNC22 (im2);
  ctx->gd_free (ctx);


  /* */
  /* Send to GD File then Ptr */
  /* */
  FUNC38 (of, sizeof(of), "%s.gd", argv[1]);
  out = FUNC3 (of, "wb");
  FUNC24 (im, out);
  FUNC2 (out);

  in = FUNC3 (of, "rb");
  if (!in)
    {
      FUNC4 (stderr, "GD Output file does not exist!\n");
      FUNC1 (1);
    }
  im2 = FUNC12 (in);
  FUNC2 (in);

  FUNC0 ("GD->GD File->GD", ref, im2);

  FUNC42 (of);
  FUNC22 (im2);

  iptr = FUNC27 (im, &sz);
  /*printf("Got ptr %d (size %d)\n",iptr, sz); */
  ctx = FUNC35 (sz, iptr);
  /*printf("Got ctx %d\n",ctx); */
  im2 = FUNC16 (ctx);
  /*printf("Got img2 %d\n",im2); */

  FUNC0 ("GD->GD ptr->GD", ref, im2);

  FUNC22 (im2);
  ctx->gd_free (ctx);

  /*
     ** Test gdImageCreateFromPngSource'
     * */

  in = FUNC3 (argv[1], "rb");

  imgsrc.source = freadWrapper;
  imgsrc.context = in;
  im2 = FUNC20 (&imgsrc);
  FUNC2 (in);

  if (im2 == NULL)
    {
      FUNC36 ("GD Source: ERROR Null returned by gdImageCreateFromPngSource\n");
    }
  else
    {
      FUNC0 ("GD Source", ref, im2);
      FUNC22 (im2);
    };


  /*
     ** Test gdImagePngToSink'
     * */

  FUNC38 (of, sizeof(of), "%s.snk", argv[1]);
  out = FUNC3 (of, "wb");
  imgsnk.sink = fwriteWrapper;
  imgsnk.context = out;
  FUNC32 (im, &imgsnk);
  FUNC2 (out);
  in = FUNC3 (of, "rb");
  if (!in)
    {
      FUNC4 (stderr, "GD Sink: ERROR - GD Sink Output file does not exist!\n");
    }
  else
    {
      im2 = FUNC18 (in);
      FUNC2 (in);

      FUNC0 ("GD Sink", ref, im2);
      FUNC22 (im2);
    };

  FUNC42 (of);

  /* */
  /*  Test Extraction */
  /* */
  in = FUNC3 ("test/gdtest_200_300_150_100.png", "rb");
  if (!in)
    {
      FUNC4 (stderr, "gdtest_200_300_150_100.png does not exist!\n");
      FUNC1 (1);
    }
  im2 = FUNC18 (in);
  FUNC2 (in);


  in = FUNC3 ("test/gdtest.gd2", "rb");
  if (!in)
    {
      FUNC4 (stderr, "gdtest.gd2 does not exist!\n");
      FUNC1 (1);
    }
  im3 = FUNC15 (in, 200, 300, 150, 100);
  FUNC2 (in);

  FUNC0 ("GD2Part (gdtest_200_300_150_100.png, gdtest.gd2(part))", im2, im3);

  FUNC22 (im2);
  FUNC22 (im3);

  /* */
  /*  Copy Blend */
  /* */
  in = FUNC3 ("test/gdtest.png", "rb");
  if (!in)
    {
      FUNC4 (stderr, "gdtest.png does not exist!\n");
      FUNC1 (1);
    }
  im2 = FUNC18 (in);
  FUNC2 (in);

  im3 = FUNC11 (100, 60);
  colRed = FUNC6 (im3, 255, 0, 0);
  colBlu = FUNC6 (im3, 0, 0, 255);
  FUNC23 (im3, 0, 0, 49, 30, colRed);
  FUNC23 (im3, 50, 30, 99, 59, colBlu);

  FUNC9 (im2, im3, 150, 200, 10, 10, 90, 50, 50);
  FUNC9 (im2, im3, 180, 70, 10, 10, 90, 50, 50);

  FUNC10 (im2, im3, 250, 160, 10, 10, 90, 50, 50);
  FUNC10 (im2, im3, 80, 70, 10, 10, 90, 50, 50);

  FUNC22 (im3);

  in = FUNC3 ("test/gdtest_merge.png", "rb");
  if (!in)
    {
      FUNC4 (stderr, "gdtest_merge.png does not exist!\n");
      FUNC1 (1);
    }
  im3 = FUNC18 (in);
  FUNC2 (in);

  FUNC36 ("[Merged Image has %d colours]\n", im2->colorsTotal);
  FUNC0 ("Merged (gdtest.png, gdtest_merge.png)", im2, im3);

  FUNC22 (im2);
  FUNC22 (im3);

#ifdef HAVE_JPEG
  out = fopen ("test/gdtest.jpg", "wb");
  if (!out)
    {
      fprintf (stderr, "Can't create file test/gdtest.jpg.\n");
      exit (1);
    }
  gdImageJpeg (im, out, -1);
  fclose (out);
  in = fopen ("test/gdtest.jpg", "rb");
  if (!in)
    {
      fprintf (stderr, "Can't open file test/gdtest.jpg.\n");
      exit (1);
    }
  im2 = gdImageCreateFromJpeg (in);
  fclose (in);
  if (!im2)
    {
      fprintf (stderr, "gdImageCreateFromJpeg failed.\n");
      exit (1);
    }
  gdImageDestroy (im2);
  printf ("Created test/gdtest.jpg successfully. Compare this image\n"
	  "to the input image manually. Some difference must be\n"
	  "expected as JPEG is a lossy file format.\n");
#endif /* HAVE_JPEG */
  /* Assume the color closest to black is the foreground
     color for the B&W wbmp image. */
  FUNC4 (stderr, "NOTE: the WBMP output image will NOT match the original unless the original\n"
	   "is also black and white. This is OK!\n");
  foreground = FUNC7 (im, 0, 0, 0);
  FUNC4 (stderr, "Foreground index is %d\n", foreground);
  if (foreground == -1)
    {
      FUNC4 (stderr, "Source image has no colors, skipping wbmp test.\n");
    }
  else
    {
      out = FUNC3 ("test/gdtest.wbmp", "wb");
      if (!out)
	{
	  FUNC4 (stderr, "Can't create file test/gdtest.wbmp.\n");
	  FUNC1 (1);
	}
      FUNC34 (im, foreground, out);
      FUNC2 (out);
      in = FUNC3 ("test/gdtest.wbmp", "rb");
      if (!in)
	{
	  FUNC4 (stderr, "Can't open file test/gdtest.wbmp.\n");
	  FUNC1 (1);
	}
      im2 = FUNC21 (in);
      FUNC4 (stderr, "WBMP has %d colors\n", FUNC8 (im2));
      FUNC4 (stderr, "WBMP colors are:\n");
      for (i = 0; (i < FUNC8 (im2)); i++)
	{
	  FUNC4 (stderr, "%02X%02X%02X\n",
		   FUNC33 (im2, i),
		   FUNC28 (im2, i),
		   FUNC5 (im2, i));
	}
      FUNC2 (in);
      if (!im2)
	{
	  FUNC4 (stderr, "gdImageCreateFromWBMP failed.\n");
	  FUNC1 (1);
	}
      FUNC0 ("WBMP test (gdtest.png, gdtest.wbmp)", ref, im2);
      out = FUNC3 ("test/gdtest_wbmp_to_png.png", "wb");
      if (!out)
	{
	  FUNC4 (stderr, "Can't create file test/gdtest_wbmp_to_png.png.\n");
	  FUNC1 (1);
	}
      FUNC30 (im2, out);
      FUNC2 (out);
      FUNC22 (im2);
    }
  FUNC22 (im);
  FUNC22 (ref);

  return 0;
}