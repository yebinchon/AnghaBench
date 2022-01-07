
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_1__ ;


typedef int outFn ;
typedef TYPE_1__* gdImagePtr ;
struct TYPE_17__ {scalar_t__ trueColor; } ;
typedef int FILE ;


 int atoi (char*) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int gdAlphaOpaque ;
 int gdImageAlpha (TYPE_1__*,int) ;
 int gdImageBlue (TYPE_1__*,int) ;
 int gdImageColorTransparent (TYPE_1__*,int) ;
 int gdImageColorsTotal (TYPE_1__*) ;
 TYPE_1__* gdImageCreateFromPng (int *) ;
 int gdImageDestroy (TYPE_1__*) ;
 scalar_t__ gdImageGetInterlaced (TYPE_1__*) ;
 int gdImageGetPixel (TYPE_1__*,int,int) ;
 int gdImageGetTransparent (TYPE_1__*) ;
 int gdImageGreen (TYPE_1__*,int) ;
 int gdImageInterlace (TYPE_1__*,int) ;
 int gdImagePng (TYPE_1__*,int *) ;
 int gdImageRed (TYPE_1__*,int) ;
 int gdImageSX (TYPE_1__*) ;
 int gdImageSY (TYPE_1__*) ;
 int gdTrueColorGetAlpha (int) ;
 int gdTrueColorGetBlue (int) ;
 int gdTrueColorGetGreen (int) ;
 int gdTrueColorGetRed (int) ;
 int getpid () ;
 int perror (char*) ;
 int printf (char*,...) ;
 scalar_t__ rename (char*,char*) ;
 int snprintf (char*,int,char*,int) ;
 int stderr ;
 int * stdin ;
 int * stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int unlink (char*) ;

int
main (int argc, char **argv)
{
  FILE *in;
  FILE *out;
  char outFn[20];
  int useStdinStdout = 0;


  gdImagePtr im = 0;
  int i;


  int no = 1;


  int write = 0;


  if (argc < 2 || !strcmp (argv[1], "--help"))
    {
      no = 1;
      goto usage;
    }


  if (strcmp ("-", argv[argc - 1]) == 0)
    {
      useStdinStdout = 1;
      in = stdin;
    }
  else
    {
      in = fopen (argv[argc - 1], "rb");
    }
  if (!in)
    {
      fprintf (stderr,
        "Error: can't open file %s.\n", argv[argc - 1]);
      exit (1);
    }

  im = gdImageCreateFromPng (in);
  fclose (in);

  if (!im)
    {
      fprintf (stderr,
        "Error: %s is not a valid PNG file.\n", argv[argc - 1]);
      exit (1);
    }

  for (i = 1; (i < (argc - 1)); i++)
    {

      if (!strcmp (argv[i], "--help"))
 {

   no = 1;
   goto usage;
 }
      else if (!strcmp (argv[i], "-i"))
 {
   if (i == (argc - 2))
     {
       fprintf (stderr,
         "Error: -i specified without y or n.\n");
       no = 1;
       goto usage;
     }
   if (!strcmp (argv[i + 1], "y"))
     {

       gdImageInterlace (im, 1);
     }
   else if (!strcmp (argv[i + 1], "n"))
     {

       gdImageInterlace (im, 0);
     }
   else
     {
       fprintf (stderr,
         "Error: -i specified without y or n.\n");
       no = 1;
       goto usage;
     }
   i++;
   no = 0;
   write = 1;
 }
      else if (!strcmp (argv[i], "-t"))
 {

   int index;
   if (i == (argc - 2))
     {
       fprintf (stderr,
         "Error: -t specified without a color table index.\n");
       no = 1;
       goto usage;
     }
   if (!strcmp (argv[i + 1], "none"))
     {

       gdImageColorTransparent (im, -1);
     }
   else
     {

       index = atoi (argv[i + 1]);
       gdImageColorTransparent (im, index);
     }
   i++;
   write = 1;
   no = 0;
 }
      else if (!strcmp (argv[i], "-l"))
 {

   int j;
   if (!im->trueColor)
     {

       printf ("Index	Red	Green	Blue Alpha\n");
       for (j = 0; (j < gdImageColorsTotal (im)); j++)
  {

    printf ("%d	%d	%d	%d	%d\n",
     j,
     gdImageRed (im, j),
     gdImageGreen (im, j),
     gdImageBlue (im, j),
     gdImageAlpha (im, j));
  }
     }
   else
     {
       printf ("Truecolor image, no palette entries to list.\n");
     }
   no = 0;
 }
      else if (!strcmp (argv[i], "-d"))
 {

   int t;
   printf ("Width: %d Height: %d Colors: %d\n",
    gdImageSX (im), gdImageSY (im),
    gdImageColorsTotal (im));
   t = gdImageGetTransparent (im);
   if (t != (-1))
     {
    printf ("First 100%% transparent index: %d\n", t);
     }
   else
     {

    printf ("First 100%% transparent index: none\n");
     }
   if (gdImageGetInterlaced (im))
     {
       printf ("Interlaced: yes\n");
     }
   else
     {
       printf ("Interlaced: no\n");
     }
   no = 0;
 }
  else if (!strcmp(argv[i], "-a"))
  {
   int maxx, maxy, x, y, alpha, pix, nalpha = 0;

   maxx = gdImageSX(im);
   maxy = gdImageSY(im);

   printf("alpha channel information:\n");

   if (im->trueColor) {
    for (y = 0; y < maxy; y++) {
     for (x = 0; x < maxx; x++) {
      pix = gdImageGetPixel(im, x, y);
      alpha = gdTrueColorGetAlpha(pix);

      if (alpha > gdAlphaOpaque) {

       printf ("%d	%d	%d	%d\n",
         gdTrueColorGetRed(pix),
         gdTrueColorGetGreen(pix),
         gdTrueColorGetBlue(pix),
         alpha);
       nalpha++;
      }

     }
    }
   }
   else
    printf("NOT a true color image\n");
   no = 0;
   printf("%d alpha channels\n", nalpha);

  }
      else
 {
   fprintf (stderr, "Unknown argument: %s\n", argv[i]);
   break;
 }
    }
usage:
  if (no)
    {

      fprintf (stderr,
   "Usage: webpng [-i y|n ] [-l] [-t index|none ] [-d] pngname.png\n"

        "  -i [y|n]   Turns on/off interlace\n"
        "  -l         Prints the table of color indexes\n"
        "  -t [index] Set the transparent color to the specified index (0-255 or \"none\")\n"
        "  -d         Reports the dimensions and other characteristics of the image.\n"
    "  -a         Prints all alpha channels that are not 100%% opaque.\n"
        "\n"
        "If you specify '-' as the input file, stdin/stdout will be used input/output.\n"
 );
    }
  if (write)
    {
      if (useStdinStdout)
 {
   out = stdout;
 }
      else
 {



   snprintf (outFn, sizeof(outFn), "webpng.tmp%d", getpid ());
   out = fopen (outFn, "wb");

   if (!out)
     {
       fprintf (stderr,
         "Unable to write to %s -- exiting\n", outFn);
       exit (1);
     }
 }


      gdImagePng (im, out);

      if (!useStdinStdout)
 {
   fclose (out);

   unlink (argv[argc - 1]);

   if (rename (outFn, argv[argc - 1]) != 0)
     {
       perror ("rename");
       exit (1);
     }
 }
    }

  if (im)
    {
      gdImageDestroy (im);
    }

  return 0;
}
