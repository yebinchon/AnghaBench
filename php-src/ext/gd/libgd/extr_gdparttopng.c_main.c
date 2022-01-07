
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdImagePtr ;
typedef int FILE ;


 int atoi (char*) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*) ;
 int gdImageCreateFromGd2Part (int *,int,int,int,int) ;
 int gdImageDestroy (int ) ;
 int gdImagePng (int ,int *) ;
 int printf (char*,int,int,int,int) ;
 int stderr ;

int
main (int argc, char **argv)
{
  gdImagePtr im;
  FILE *in, *out;
  int x, y, w, h;

  if (argc != 7)
    {
      fprintf (stderr, "Usage: gdparttopng filename.gd filename.png x y w h\n");
      exit (1);
    }
  in = fopen (argv[1], "rb");
  if (!in)
    {
      fprintf (stderr, "Input file does not exist!\n");
      exit (1);
    }

  x = atoi (argv[3]);
  y = atoi (argv[4]);
  w = atoi (argv[5]);
  h = atoi (argv[6]);

  printf ("Extracting from (%d, %d), size is %dx%d\n", x, y, w, h);

  im = gdImageCreateFromGd2Part (in, x, y, w, h);
  fclose (in);
  if (!im)
    {
      fprintf (stderr, "Input is not in GD2 format!\n");
      exit (1);
    }
  out = fopen (argv[2], "wb");
  if (!out)
    {
      fprintf (stderr, "Output file cannot be written to!\n");
      gdImageDestroy (im);
      exit (1);
    }



  fprintf(stderr, "No PNG library support.\n");

  fclose (out);
  gdImageDestroy (im);

  return 0;
}
