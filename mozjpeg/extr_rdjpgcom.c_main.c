
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int O_BINARY ;
 int READ_BINARY ;
 int ccommand (char***) ;
 int exit (int ) ;
 int * fdopen (int ,int ) ;
 int fileno (int *) ;
 int * fopen (char*,int ) ;
 int fprintf (int ,char*,scalar_t__*,...) ;
 int * infile ;
 scalar_t__ keymatch (char*,char*,int) ;
 scalar_t__* progname ;
 int scan_JPEG_header (int,int) ;
 int setmode (int ,int ) ;
 int stderr ;
 int * stdin ;
 int usage () ;

int
main(int argc, char **argv)
{
  int argn;
  char *arg;
  int verbose = 0, raw = 0;






  progname = argv[0];
  if (progname == ((void*)0) || progname[0] == 0)
    progname = "rdjpgcom";


  for (argn = 1; argn < argc; argn++) {
    arg = argv[argn];
    if (arg[0] != '-')
      break;
    arg++;
    if (keymatch(arg, "verbose", 1)) {
      verbose++;
    } else if (keymatch(arg, "raw", 1)) {
      raw = 1;
    } else
      usage();
  }



  if (argn < argc - 1) {
    fprintf(stderr, "%s: only one input file\n", progname);
    usage();
  }
  if (argn < argc) {
    if ((infile = fopen(argv[argn], READ_BINARY)) == ((void*)0)) {
      fprintf(stderr, "%s: can't open %s\n", progname, argv[argn]);
      exit(EXIT_FAILURE);
    }
  } else {
    infile = stdin;

  }


  (void)scan_JPEG_header(verbose, raw);


  exit(EXIT_SUCCESS);
  return 0;
}
