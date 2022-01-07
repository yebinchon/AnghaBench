
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdImagePtr ;
typedef int FILE ;


 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int gdImageCreateFromPng (int *) ;
 int gdImageDestroy (int ) ;
 int stderr ;
 int testDrawing (int ,double,int,int,char*) ;

int
main (int argc, char *argv[])
{

  FILE *in;
  FILE *out;


  gdImagePtr im_in = 0;


  int lightBlue;

  if (argc != 2)
    {
      fprintf (stderr, "Usage: testac filename.png\n");
      exit (1);
    }






  in = fopen (argv[1], "rb");
  if (!in)
    {
      fprintf (stderr, "Can't load %s.\n", argv[1]);
      exit (1);
    }
  else
    {
      im_in = gdImageCreateFromPng (in);
      fclose (in);
    }
  testDrawing (im_in, 1.0, 0, 0, "noblending-fullsize-truecolor.png");
  testDrawing (im_in, 1.0, 1, 0, "blending-fullsize-truecolor.png");
  testDrawing (im_in, 0.5, 0, 0, "noblending-halfsize-truecolor.png");
  testDrawing (im_in, 0.5, 1, 0, "blending-halfsize-truecolor.png");
  testDrawing (im_in, 2.0, 0, 0, "noblending-doublesize-truecolor.png");
  testDrawing (im_in, 2.0, 1, 0, "blending-doublesize-truecolor.png");
  testDrawing (im_in, 1.0, 0, 1, "noblending-fullsize-palette.png");
  testDrawing (im_in, 1.0, 1, 1, "blending-fullsize-palette.png");
  testDrawing (im_in, 0.5, 0, 1, "noblending-halfsize-palette.png");
  testDrawing (im_in, 0.5, 1, 1, "blending-halfsize-palette.png");
  testDrawing (im_in, 2.0, 0, 1, "noblending-doublesize-palette.png");
  testDrawing (im_in, 2.0, 1, 1, "blending-doublesize-palette.png");
  gdImageDestroy (im_in);
  return 0;
}
