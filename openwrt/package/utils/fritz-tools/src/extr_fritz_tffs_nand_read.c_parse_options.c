
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int fprintf (int ,char*) ;
 int getopt (int,char**,char*) ;
 void* mtddev ;
 int * name_filter ;
 void* optarg ;
 int print_all_key_names ;
 int read_oob_sector_health ;
 int show_all ;
 int stderr ;
 int swap_bytes ;
 int usage (int ) ;

__attribute__((used)) static void parse_options(int argc, char *argv[])
{
 while (1) {
  int c;

  c = getopt(argc, argv, "abd:hln:o");
  if (c == -1)
   break;

  switch (c) {
  case 'a':
   show_all = 1;
   name_filter = ((void*)0);
   print_all_key_names = 0;
   break;
  case 'b':
   swap_bytes = 1;
   break;
  case 'd':
   mtddev = optarg;
   break;
  case 'h':
   usage(EXIT_SUCCESS);
   break;
  case 'l':
   print_all_key_names = 1;
   show_all = 0;
   name_filter = ((void*)0);
   break;
  case 'n':
   name_filter = optarg;
   show_all = 0;
   print_all_key_names = 0;
   break;
  case 'o':
   read_oob_sector_health = 1;
   break;
  default:
   usage(EXIT_FAILURE);
   break;
  }
 }

 if (!mtddev) {
  fprintf(stderr, "ERROR: No input file (-d <file>) given!\n");
  usage(EXIT_FAILURE);
 }

 if (!show_all && !name_filter && !print_all_key_names) {
  fprintf(stderr,
   "ERROR: either -l, -a or -n <key name> is required!\n");
  usage(EXIT_FAILURE);
 }
}
