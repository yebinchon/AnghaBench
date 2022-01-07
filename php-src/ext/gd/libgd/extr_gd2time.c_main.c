
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
 int printf (char*,int,int,...) ;
 int stderr ;
 int time (int ) ;

int
main (int argc, char **argv)
{
  gdImagePtr im;
  FILE *in;
  int x, y, w, h;
  int c;
  int i;
  int t0;

  if (argc != 7)
    {
      fprintf (stderr, "Usage: gd2time filename.gd count x y w h\n");
      exit (1);
    }

  c = atoi (argv[2]);
  x = atoi (argv[3]);
  y = atoi (argv[4]);
  w = atoi (argv[5]);
  h = atoi (argv[6]);

  printf ("Extracting %d times from (%d, %d), size is %dx%d\n", c, x, y, w, h);

  t0 = time (0);
  for (i = 0; i < c; i++)
    {
      in = fopen (argv[1], "rb");
      if (!in)
 {
   fprintf (stderr, "Input file does not exist!\n");
   exit (1);
 }

      im = gdImageCreateFromGd2Part (in, x, y, w, h);
      fclose (in);

      if (!im)
 {
   fprintf (stderr, "Error reading source file!\n");
   exit (1);
 }
      gdImageDestroy (im);
    };
  t0 = time (0) - t0;
  printf ("%d seconds to extract (& destroy) %d times\n", t0, c);

  return 0;
}
