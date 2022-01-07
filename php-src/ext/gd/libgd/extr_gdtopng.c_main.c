
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdImagePtr ;
typedef int FILE ;


 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*) ;
 int gdImageCreateFromGd (int *) ;
 int gdImageDestroy (int ) ;
 int gdImagePng (int ,int *) ;
 int stderr ;

int
main (int argc, char **argv)
{
  gdImagePtr im;
  FILE *in, *out;
  if (argc != 3)
    {
      fprintf (stderr, "Usage: gdtopng filename.gd filename.png\n");
      exit (1);
    }
  in = fopen (argv[1], "rb");
  if (!in)
    {
      fprintf (stderr, "Input file does not exist!\n");
      exit (1);
    }
  im = gdImageCreateFromGd (in);
  fclose (in);
  if (!im)
    {
      fprintf (stderr, "Input is not in GD format!\n");
      exit (1);
    }
  out = fopen (argv[2], "wb");
  if (!out)
    {
      fprintf (stderr, "Output file cannot be written to!\n");
      gdImageDestroy (im);
      exit (1);
    }
  gdImagePng (im, out);
  fclose (out);
  gdImageDestroy (im);

  return 0;
}
