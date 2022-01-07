
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; } ;
typedef TYPE_1__ gdPoint ;
typedef scalar_t__ gdImagePtr ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*) ;
 int gdFontGiant ;
 int gdFontSmall ;
 int gdImageArc (scalar_t__,int,int,int,int,int,int,int) ;
 int gdImageColorAllocate (scalar_t__,int,int,int) ;
 int gdImageColorTransparent (scalar_t__,int) ;
 int gdImageCopyResized (scalar_t__,scalar_t__,int,int,int ,int ,int,int,int,int) ;
 scalar_t__ gdImageCreateFromPng (int *) ;
 scalar_t__ gdImageCreateTrueColor (int,int) ;
 int gdImageDestroy (scalar_t__) ;
 int gdImageFill (scalar_t__,int,int,int) ;
 int gdImageFilledPolygon (scalar_t__,TYPE_1__*,int,int) ;
 int gdImageInterlace (scalar_t__,int) ;
 int gdImageLine (scalar_t__,int,int,int,int,int) ;
 int gdImagePng (scalar_t__,int *) ;
 int gdImageSX (scalar_t__) ;
 int gdImageSY (scalar_t__) ;
 int gdImageSetBrush (scalar_t__,scalar_t__) ;
 int gdImageSetStyle (scalar_t__,int*,int) ;
 int gdImageString (scalar_t__,int ,int,int,unsigned char*,int) ;
 int gdImageStringUp (scalar_t__,int ,int,int,unsigned char*,int) ;
 int gdStyledBrushed ;
 int stderr ;

int
main (void)
{

  FILE *in;
  FILE *out;


  gdImagePtr im_in = 0, im_out = 0;


  gdImagePtr brush;


  int white;
  int blue;
  int red;
  int green;


  gdPoint points[3];


  im_out = gdImageCreateTrueColor (256, 256);

  white = gdImageColorAllocate (im_out, 255, 255, 255);


  gdImageColorTransparent (im_out, white);



  in = fopen ("demoin.png", "rb");
  if (!in)
    {
      fprintf (stderr, "Can't load source image; this demo\n");
      fprintf (stderr, "is much more impressive if demoin.png\n");
      fprintf (stderr, "is available.\n");
      im_in = 0;
    }
  else
    {
      im_in = gdImageCreateFromPng (in);
      fclose (in);

      gdImageCopyResized (im_out, im_in,
     32, 32, 0, 0, 192, 192, 255, 255);
    }
  red = gdImageColorAllocate (im_out, 255, 0, 0);
  green = gdImageColorAllocate (im_out, 0, 255, 0);
  blue = gdImageColorAllocate (im_out, 0, 0, 255);

  gdImageLine (im_out, 16, 16, 240, 16, green);
  gdImageLine (im_out, 240, 16, 240, 240, green);
  gdImageLine (im_out, 240, 240, 16, 240, green);
  gdImageLine (im_out, 16, 240, 16, 16, green);

  gdImageArc (im_out, 128, 128, 60, 20, 0, 720, blue);

  gdImageArc (im_out, 128, 128, 40, 40, 90, 270, blue);


  gdImageFill (im_out, 8, 8, blue);

  points[0].x = 64;
  points[0].y = 0;
  points[1].x = 0;
  points[1].y = 128;
  points[2].x = 128;
  points[2].y = 128;
  gdImageFilledPolygon (im_out, points, 3, green);

  if (im_in)
    {
      int style[8];
      brush = gdImageCreateTrueColor (16, 16);
      gdImageCopyResized (brush, im_in,
     0, 0, 0, 0,
     gdImageSX (brush), gdImageSY (brush),
     gdImageSX (im_in), gdImageSY (im_in));
      gdImageSetBrush (im_out, brush);


      style[0] = 0;
      style[1] = 0;
      style[2] = 0;
      style[3] = 0;
      style[4] = 0;
      style[5] = 0;
      style[6] = 0;
      style[7] = 1;
      gdImageSetStyle (im_out, style, 8);

      gdImageLine (im_out, 0, 255, 255, 0, gdStyledBrushed);
    }

  gdImageString (im_out, gdFontGiant, 32, 32,
   (unsigned char *) "hi", red);
  gdImageStringUp (im_out, gdFontSmall, 64, 64,
     (unsigned char *) "hi", red);

  gdImageInterlace (im_out, 1);
  out = fopen ("demoout.png", "wb");

  gdImagePng (im_out, out);
  fclose (out);
  gdImageDestroy (im_out);
  if (im_in)
    {
      gdImageDestroy (im_in);
    }
  return 0;
}
