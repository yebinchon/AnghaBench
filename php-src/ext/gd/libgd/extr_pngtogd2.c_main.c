
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
 int gdImageCreateFromPng (int *) ;
 int gdImageDestroy (int ) ;
 int gdImageGd2 (int ,int *,int,int) ;
 int stderr ;

int
main (int argc, char **argv)
{
  gdImagePtr im;
  FILE *in, *out;
  int cs, fmt;

  if (argc != 5)
    {
      fprintf (stderr, "Usage: pngtogd2 filename.png filename.gd2 cs fmt\n");
      fprintf (stderr, "    where cs is the chunk size\n");
      fprintf (stderr, "          fmt is 1 for raw, 2 for compressed\n");
      exit (1);
    }
  in = fopen (argv[1], "rb");
  if (!in)
    {
      fprintf (stderr, "Input file does not exist!\n");
      exit (1);
    }
  im = gdImageCreateFromPng (in);
  fclose (in);
  if (!im)
    {
      fprintf (stderr, "Input is not in PNG format!\n");
      exit (1);
    }
  out = fopen (argv[2], "wb");
  if (!out)
    {
      fprintf (stderr, "Output file cannot be written to!\n");
      gdImageDestroy (im);
      exit (1);
    }
  cs = atoi (argv[3]);
  fmt = atoi (argv[4]);
  gdImageGd2 (im, out, cs, fmt);
  fclose (out);
  gdImageDestroy (im);

  return 0;
}
