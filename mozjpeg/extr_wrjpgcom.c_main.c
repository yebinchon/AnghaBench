
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int ERREXIT (char*) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ MAX_COM_LENGTH ;
 int M_COM ;
 int O_BINARY ;
 char* READ_BINARY ;
 char* WRITE_BINARY ;
 int ccommand (char***) ;
 int copy_rest_of_file () ;
 int exit (int ) ;
 int fclose (int *) ;
 void* fdopen (int ,char*) ;
 int fileno (int *) ;
 void* fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int getc (int *) ;
 int * infile ;
 scalar_t__ keymatch (char*,char*,int) ;
 scalar_t__ malloc (size_t) ;
 int * outfile ;
 scalar_t__* progname ;
 int scan_JPEG_header (int) ;
 int setmode (int ,int ) ;
 int stderr ;
 int * stdin ;
 int * stdout ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;
 int usage () ;
 int write_1_byte (int ) ;
 int write_2_bytes (unsigned int) ;
 int write_marker (int) ;

int
main(int argc, char **argv)
{
  int argn;
  char *arg;
  int keep_COM = 1;
  char *comment_arg = ((void*)0);
  FILE *comment_file = ((void*)0);
  unsigned int comment_length = 0;
  int marker;






  progname = argv[0];
  if (progname == ((void*)0) || progname[0] == 0)
    progname = "wrjpgcom";


  for (argn = 1; argn < argc; argn++) {
    arg = argv[argn];
    if (arg[0] != '-')
      break;
    arg++;
    if (keymatch(arg, "replace", 1)) {
      keep_COM = 0;
    } else if (keymatch(arg, "cfile", 2)) {
      if (++argn >= argc) usage();
      if ((comment_file = fopen(argv[argn], "r")) == ((void*)0)) {
        fprintf(stderr, "%s: can't open %s\n", progname, argv[argn]);
        exit(EXIT_FAILURE);
      }
    } else if (keymatch(arg, "comment", 1)) {
      if (++argn >= argc) usage();
      comment_arg = argv[argn];



      if (comment_arg[0] == '"') {
        comment_arg = (char *)malloc((size_t)MAX_COM_LENGTH);
        if (comment_arg == ((void*)0))
          ERREXIT("Insufficient memory");
        if (strlen(argv[argn]) + 2 >= (size_t)MAX_COM_LENGTH) {
          fprintf(stderr, "Comment text may not exceed %u bytes\n",
                  (unsigned int)MAX_COM_LENGTH);
          exit(EXIT_FAILURE);
        }
        strcpy(comment_arg, argv[argn] + 1);
        for (;;) {
          comment_length = (unsigned int)strlen(comment_arg);
          if (comment_length > 0 && comment_arg[comment_length - 1] == '"') {
            comment_arg[comment_length - 1] = '\0';
            break;
          }
          if (++argn >= argc)
            ERREXIT("Missing ending quote mark");
          if (strlen(comment_arg) + strlen(argv[argn]) + 2 >=
              (size_t)MAX_COM_LENGTH) {
            fprintf(stderr, "Comment text may not exceed %u bytes\n",
                    (unsigned int)MAX_COM_LENGTH);
            exit(EXIT_FAILURE);
          }
          strcat(comment_arg, " ");
          strcat(comment_arg, argv[argn]);
        }
      } else if (strlen(argv[argn]) >= (size_t)MAX_COM_LENGTH) {
        fprintf(stderr, "Comment text may not exceed %u bytes\n",
                (unsigned int)MAX_COM_LENGTH);
        exit(EXIT_FAILURE);
      }
      comment_length = (unsigned int)strlen(comment_arg);
    } else
      usage();
  }


  if (comment_arg != ((void*)0) && comment_file != ((void*)0))
    usage();



  if (comment_arg == ((void*)0) && comment_file == ((void*)0) && argn >= argc)
    usage();


  if (argn < argc) {
    if ((infile = fopen(argv[argn], READ_BINARY)) == ((void*)0)) {
      fprintf(stderr, "%s: can't open %s\n", progname, argv[argn]);
      exit(EXIT_FAILURE);
    }
  } else {
    infile = stdin;

  }
  if (argn < argc - 1) {
    fprintf(stderr, "%s: only one input file\n", progname);
    usage();
  }
  outfile = stdout;




  if (comment_arg == ((void*)0)) {
    FILE *src_file;
    int c;

    comment_arg = (char *)malloc((size_t)MAX_COM_LENGTH);
    if (comment_arg == ((void*)0))
      ERREXIT("Insufficient memory");
    comment_length = 0;
    src_file = (comment_file != ((void*)0) ? comment_file : stdin);
    while ((c = getc(src_file)) != EOF) {
      if (comment_length >= (unsigned int)MAX_COM_LENGTH) {
        fprintf(stderr, "Comment text may not exceed %u bytes\n",
                (unsigned int)MAX_COM_LENGTH);
        exit(EXIT_FAILURE);
      }
      comment_arg[comment_length++] = (char)c;
    }
    if (comment_file != ((void*)0))
      fclose(comment_file);
  }







  marker = scan_JPEG_header(keep_COM);

  if (comment_length > 0) {
    write_marker(M_COM);
    write_2_bytes(comment_length + 2);
    while (comment_length > 0) {
      write_1_byte(*comment_arg++);
      comment_length--;
    }
  }



  write_marker(marker);
  copy_rest_of_file();


  exit(EXIT_SUCCESS);
  return 0;
}
